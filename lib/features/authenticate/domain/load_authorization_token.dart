import 'package:dartz/dartz.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

import '../../../core/no_params.dart';
import '../../../core/usecase.dart';

class LoadAuthorizationToken implements UseCase<String, NoParams> {
  final AuthenticationRepository repository;

  LoadAuthorizationToken(this.repository);

  @override
  Future<Either<Exception, String>> call(NoParams params) async {
    var tokenResponse = await repository.obtainToken();
    return tokenResponse.fold(
        (_) => repository
            .authenticate(Credentials(username: "elo", password: "elo")),
        (token) => Right(token));
  }
}
