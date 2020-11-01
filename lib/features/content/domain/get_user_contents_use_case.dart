import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/profile/domain/get_likes_statuses_use_case.dart';

@injectable
class GetUserContentsUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;
  final GetLikesStatusesUseCase _getLikesStatuses;

  GetUserContentsUseCase(
      this._repository, this._loadAuthorizationToken, this._getLikesStatuses);

  Future<Result<PagedList<PersonalizedContent>>> call(int page) async {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((authorizationTokenResult) => authorizationTokenResult.when(
            success: (data) => _repository.loadUserContent(data, page),
            error: (exception) =>
                Future.value(Result<PagedList<Content>>.error(exception))))
        .asyncMap((contents) => contents.when(
            success: (data) async {
              final contents = data.list;
              final page = data.page;
              final pages = data.pages;
              return (await _getLikesStatuses(
                      contents.map((content) => content.id).toList()))
                  .when(
                      success: (data) =>
                          Result<PagedList<PersonalizedContent>>.success(
                              PagedList(
                                  list: contents
                                      .map((content) => PersonalizedContent(
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
