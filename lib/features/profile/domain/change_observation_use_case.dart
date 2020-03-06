import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';

@injectable
class ChangeObservationUseCase {
  final UserDataRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  ChangeObservationUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<void>> call(User user, bool observe) {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (result) =>
                    _repository.changeObservation(result.data, user, observe),
                error: (result) => Future.value(
                    Result<void>.error(exception: result.exception))))
        .single;
  }
}
