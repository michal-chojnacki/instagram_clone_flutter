import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_local_data_source.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_service.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_credentials.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_token.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

@prod
@dev
@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationService _service;
  final AuthenticationLocalDataSource _localDataSource;

  AuthenticationRepositoryImpl(this._service, this._localDataSource);

  @override
  Future<Result<String>> authenticate(Credentials credentials) async {
    try {
      final response = await _service.authenticate(RawCredentials(
              username: credentials.username, password: credentials.password)
          .toJson());
      if (response.statusCode == 200) {
        final token = RawToken.fromJson(response.body).token;
        await _localDataSource.saveToken(token);
        return Result.success(token);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<String>> register(Credentials credentials) async {
    try {
      final response = await _service.register(RawCredentials(
              username: credentials.username, password: credentials.password)
          .toJson());
      if (response.statusCode == 200) {
        final token = RawToken.fromJson(response.body).token;
        await _localDataSource.saveToken(token);
        return Result.success(token);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<String>> obtainToken() {
    return _localDataSource.obtainToken();
  }

  @override
  Future<Result<void>> clearToken() {
    return _localDataSource.saveToken(null);
  }
}
