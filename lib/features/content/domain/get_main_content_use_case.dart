import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/profile/domain/get_likes_statuses_use_case.dart';

import './model/content.dart';
import './user_content_repository.dart';
import '../../authenticate/domain/load_authorization_token_use_case.dart';

@injectable
class GetMainContentUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;
  final GetLikesStatusesUseCase _getLikesStatuses;

  GetMainContentUseCase(
      this._repository, this._loadAuthorizationToken, this._getLikesStatuses);

  Future<Result<PagedList<PersonalizedContent>>> call(int page) async {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (data) => _repository.loadMainContent(data, page),
                error: (exception) =>
                    Future.value(Result<PagedList<Content>>.error(exception))))
        .asyncMap((contents) => contents.when(
            success: (data) async {
              var contents = data.list;
              var page = data.page;
              var pages = data.pages;
              return (await _getLikesStatuses(
                      contents.map((content) => content.id).toList()))
                  .when(
                      success: (data) =>
                          Result<PagedList<PersonalizedContent>>.success(
                              PagedList.create(
                                  list: contents
                                      .map((content) =>
                                          PersonalizedContent.create(
                                              content: content,
                                              liked: data[content.id]))
                                      .toList(),
                                  page: page,
                                  pages: pages)),
                      error: (exception) =>
                          Result<PagedList<PersonalizedContent>>.error(
                              exception));
            },
            error: (exception) => Future.value(
                Result<PagedList<PersonalizedContent>>.error(exception))))
        .single;
  }
}
