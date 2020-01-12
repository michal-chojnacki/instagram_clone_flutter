import 'package:dartz/dartz.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

abstract class AuthenticationRepository {
  Future<Either<Exception, String>> authenticate(Credentials credentials);

  Future<Either<Exception, String>> obtainToken();
}