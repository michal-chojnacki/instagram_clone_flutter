import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_credentials.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final http.Client _client;
  String _token;

  AuthenticationRepositoryImpl(this._client);

  @override
  Future<Either<Exception, String>> authenticate(Credentials credentials) async {
    final response = await _client.post("http://10.0.2.2:8080/authenticate",
      body: json.encode(RawCredentials(username: credentials.username, password: credentials.password).toJson()),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      _token = json.decode(response.body)['token'];
      return Right(_token);
    } else {
      return Left(ServerException());
    }
  }

  @override
  Future<Either<Exception, String>> obtainToken() async {
    if(_token != null) {
      return Right(_token);
    } else {
      return Left(Exception("No token saved. Authenticate first!"));
    }
  }

}
