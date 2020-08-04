import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_local_data_source.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_service.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_credentials.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

@prod
@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationService _service;
  final AuthenticationLocalDataSource _localDataSource;

  AuthenticationRepositoryImpl(this._service, this._localDataSource);

  @override
  Future<Result<String>> authenticate(Credentials credentials) async {
    try {
      final response = await _service.authenticate(RawCredentials.create(
          username: credentials.username, password: credentials.password));
      if (response.statusCode == 200) {
        var token = response.body.token;
        await _localDataSource.saveToken(token);
        return Result.success(data: token);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<String>> register(Credentials credentials) async {
    try {
      final response = await _service.register(RawCredentials.create(
          username: credentials.username, password: credentials.password));
      if (response.statusCode == 200) {
        var token = response.body.token;
        await _localDataSource.saveToken(token);
        return Result.success(data: token);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<String>> obtainToken() {
    return _localDataSource.obtainToken();
  }
}
