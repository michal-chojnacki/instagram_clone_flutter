import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';

@injectable
class GetContentsForUserUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetContentsForUserUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<List<Content>>> call(User user, int page) async {
    if (page > 0) {
      return Result.error(exception: NoNextPageException());
    }

    try {
      var authorizationToken = (await _loadAuthorizationToken()).when(
          success: (result) => result.data,
          error: (result) => throw result.exception);
      return await _repository.loadContent(authorizationToken, user);
    } catch (e) {
      return Result.error(exception: e);
    }
  }
}
