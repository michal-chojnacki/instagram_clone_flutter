import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';

@injectable
class GetUserDataUseCase {
  final UserDataRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetUserDataUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<User>> call({@nullable int userId}) {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (data) => _repository.fetchUserData(data, userId),
                error: (exception) =>
                    Future.value(Result<User>.error(exception))))
        .single;
  }
}
