import 'dart:ffi';

import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthenticationLocalDataSource {
  Future<Result<String>> obtainToken();

  Future<Result<void>> saveToken(String token);
}

@LazySingleton(as: AuthenticationLocalDataSource)
class AuthenticationLocalDataSourceImpl extends AuthenticationLocalDataSource {
  static const _TOKEN = "authentication_token";
  final SharedPreferences _sharedPreferences;
  String _token;

  AuthenticationLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<Result<String>> obtainToken() async {
    if (_token != null) {
      return Result.success(_token);
    } else {
      var sharedPrefsToken = _sharedPreferences.getString(_TOKEN);
      return (sharedPrefsToken != null)
          ? Result.success(sharedPrefsToken)
          : Result.error(Exception("No token saved. Authenticate first!"));
    }
  }

  @override
  Future<Result<void>> saveToken(String token) async {
    _token = token;
    await _sharedPreferences.setString(_TOKEN, token);
    return Result.success(Void);
  }
}
