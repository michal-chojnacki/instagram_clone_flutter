import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';

@injectable
class SendContentUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  SendContentUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<void>> call(String message, String imagePath) async {
    try {
      var authorizationToken = (await _loadAuthorizationToken()).when(
          success: (result) => result.data,
          error: (result) => throw result.exception);
      return await _repository.sendContent(authorizationToken, message, imagePath);
    } catch (e) {
      return Result.error(exception: e);
    }
  }
}
