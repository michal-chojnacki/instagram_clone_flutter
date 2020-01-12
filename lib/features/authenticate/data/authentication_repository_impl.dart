import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_local_data_source.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_credentials.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final http.Client _client;
  final AuthenticationLocalDataSource _localDataSource;

  AuthenticationRepositoryImpl(this._client, this._localDataSource);

  @override
  Future<Either<Exception, String>> authenticate(Credentials credentials) async {
    final response = await _client.post("http://10.0.2.2:8080/authenticate",
      body: json.encode(RawCredentials(username: credentials.username, password: credentials.password).toJson()),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      var token = json.decode(response.body)['token'];
      await _localDataSource.saveToken(token);
      return Right(token);
    } else {
      return Left(ServerException());
    }
  }

  @override
  Future<Either<Exception, String>> obtainToken() {
     return _localDataSource.obtainToken();
  }
}
