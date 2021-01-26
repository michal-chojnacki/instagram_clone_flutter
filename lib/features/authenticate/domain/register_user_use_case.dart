import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

@injectable
class RegisterUserUseCase {
  final AuthenticationRepository _repository;

  RegisterUserUseCase(this._repository);

  Future<Result<String>> call(String username, String password) async {
    return _repository
        .register(Credentials(username: username, password: password));
  }
}
