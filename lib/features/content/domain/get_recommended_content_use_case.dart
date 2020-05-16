import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/profile/domain/get_likes_statuses_use_case.dart';

import './model/content.dart';
import './user_content_repository.dart';
import '../../authenticate/domain/load_authorization_token_use_case.dart';

@injectable
class GetRecommendedContentUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;
  final GetLikesStatusesUseCase _getLikesStatuses;

  GetRecommendedContentUseCase(
      this._repository, this._loadAuthorizationToken, this._getLikesStatuses);

  Future<Result<List<PersonalizedContent>>> call(int page) async {
    if (page > 0) {
      return Result.error(exception: NoNextPageException());
    }

    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (result) =>
                    _repository.loadRecommendedContent(result.data),
                error: (result) => Future.value(
                    Result<List<Content>>.error(exception: result.exception))))
        .asyncMap((contents) => contents.when(
            success: (result) async {
              var contents = result.data;
              return (await _getLikesStatuses(
                      contents.map((content) => content.id).toList()))
                  .when(
                      success: (result) =>
                          Result<List<PersonalizedContent>>.success(
                              data: contents
                                  .map((content) => PersonalizedContent.create(
                                      content: content,
                                      liked: result.data[content.id]))
                                  .toList()),
                      error: (result) =>
                          Result<List<PersonalizedContent>>.error(
                              exception: result.exception));
            },
            error: (result) => Future.value(
                Result<List<PersonalizedContent>>.error(
                    exception: result.exception))))
        .single;
  }
}
