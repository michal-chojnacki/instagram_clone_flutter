import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';

@injectable
class GetObservationStatusUseCase {
  final UserDataRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetObservationStatusUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<bool>> call(User user) {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (result) =>
                    _repository.getObservation(result.data, user),
                error: (result) => Future.value(
                    Result<bool>.error(exception: result.exception))))
        .single;
  }
}
