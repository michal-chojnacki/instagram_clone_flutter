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
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((authorizationTokenResult) => authorizationTokenResult.when(
            success: (data) =>
                _repository.sendContent(data, message, imagePath),
            error: (exception) => Future.value(Result<void>.error(exception))))
        .single;
  }
}
