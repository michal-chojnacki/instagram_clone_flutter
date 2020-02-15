import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

abstract class AuthenticationRepository {
  Future<Result<String>> authenticate(Credentials credentials);

  Future<Result<String>> register(Credentials credentials);

  Future<Result<String>> obtainToken();
}