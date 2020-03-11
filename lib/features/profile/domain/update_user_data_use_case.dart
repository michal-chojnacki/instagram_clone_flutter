import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';

@injectable
class UpdateUserDataUseCase {
  final UserDataRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  UpdateUserDataUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<void>> call({String avatarPath, String bio, String username, String fullname}) {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (result) => _repository.updateUser(
                    result.data, avatarPath, bio, username, fullname),
                error: (result) => Future.value(
                    Result<void>.error(exception: result.exception))))
        .single;
  }
}
