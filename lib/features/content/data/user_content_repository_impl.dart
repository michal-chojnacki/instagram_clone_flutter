import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/json_mapper.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';

class UserContentRepositoryImpl extends UserContentRepository {
  final http.Client _client;
  final JsonMapper<List<Content>> _contentsMapper;

  UserContentRepositoryImpl(this._client, this._contentsMapper);

  @override
  Future<Either<Exception, List<Content>>> loadMainContent(
      String authorizationToken) async {
    final response = await _client.get("http://10.0.2.2:8080/main_content",
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authorizationToken',
      },
    );
    if (response.statusCode == 200) {
      return Right(_contentsMapper.map(json.decode(response.body)));
    } else {
      return Left(ServerException());
    }
  }
}
