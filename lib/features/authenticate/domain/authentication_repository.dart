import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_repository_impl.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

@injectable
@Bind.toType(AuthenticationRepositoryImpl)
abstract class AuthenticationRepository {
  Future<Result<String>> authenticate(Credentials credentials);

  Future<Result<String>> obtainToken();
}