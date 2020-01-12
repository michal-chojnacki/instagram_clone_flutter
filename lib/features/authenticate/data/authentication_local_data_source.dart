import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthenticationLocalDataSource {
  Future<Either<Exception, String>> obtainToken();

  Future<Either<Exception, void>> saveToken(String token);
}

class AuthenticationLocalDataSourceImpl extends AuthenticationLocalDataSource {
  static const _TOKEN = "authentication_token";
  final Future<SharedPreferences> _sharedPreferences;
  String _token;

  AuthenticationLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<Either<Exception, String>> obtainToken() async {
    if (_token != null) {
      return Right(_token);
    } else {
      var sharedPrefsToken = (await _sharedPreferences).getString(_TOKEN);
      return (sharedPrefsToken != null) ? Right(sharedPrefsToken) : Left(Exception("No token saved. Authenticate first!"));
    }
  }

  @override
  Future<Either<Exception, void>> saveToken(String token) async {
    _token = token;
    await (await _sharedPreferences).setString(_TOKEN, token);
    return Right(Void);
  }
}
