import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/profile/domain/get_likes_statuses_use_case.dart';

@injectable
class GetContentsForUserUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;
  final GetLikesStatusesUseCase _getLikesStatuses;

  GetContentsForUserUseCase(
      this._repository, this._loadAuthorizationToken, this._getLikesStatuses);

  Future<Result<PagedList<PersonalizedContent>>> call(
      User user, int page) async {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((authorizationTokenResult) => authorizationTokenResult.when(
            success: (result) =>
                _repository.loadContent(result.data, user, page),
            error: (result) => Future.value(
                Result<PagedList<Content>>.error(exception: result.exception))))
        .asyncMap((contents) => contents.when(
            success: (result) async {
              var contents = result.data.list;
              var page = result.data.page;
              var pages = result.data.pages;
              return (await _getLikesStatuses(
                      contents.map((content) => content.id).toList()))
                  .when(
                      success: (result) =>
                          Result<PagedList<PersonalizedContent>>.success(
                              data: PagedList.create(
                                  list: contents
                                      .map((content) =>
                                          PersonalizedContent.create(
                                              content: content,
                                              liked: result.data[content.id]))
                                      .toList(),
                                  page: page,
                                  pages: pages)),
                      error: (result) =>
                          Result<PagedList<PersonalizedContent>>.error(
                              exception: result.exception));
            },
            error: (result) => Future.value(
                Result<PagedList<PersonalizedContent>>.error(
                    exception: result.exception))))
        .single;
  }
}
