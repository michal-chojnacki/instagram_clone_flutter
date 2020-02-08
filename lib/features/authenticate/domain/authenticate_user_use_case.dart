import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

@injectable
class AuthenticateUserUseCase {
  final AuthenticationRepository repository;

  AuthenticateUserUseCase(this.repository);

  Future<Result<String>> call(String username, String password) async {
    return repository.authenticate(Credentials.create(username: username, password: password));
  }
}