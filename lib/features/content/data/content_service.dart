import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

part 'content_service.chopper.dart';

@injectable
@ChopperApi(baseUrl: '/')
abstract class ContentService extends ChopperService {
  @factoryMethod
  static ContentService create([ChopperClient client]) =>
      _$ContentService(client);

  @Get(path: 'main_content')
  Future<Response> getMainContent(
      @Header('Authorization') String authorizationBearer,
      @Query('page') int page);

  @Get(path: 'recommended_content')
  Future<Response> getRecommendedContent(
      @Header('Authorization') String authorizationBearer,
      @Query('page') int page);

  @Get(path: 'search_content')
  Future<Response> searchContent(
      @Header('Authorization') String authorizationBearer,
      @Query('query') String query,
      @Query('page') int page);

  @Get(path: 'content')
  Future<Response> getUserContentById(
      @Header('Authorization') String authorizationBearer,
      @Query('user') int userId,
      @Query('page') int page);

  @Get(path: 'content')
  Future<Response> getUserContent(
      @Header('Authorization') String authorizationBearer,
      @Query('page') int page);

  @Post(path: 'content')
  @multipart
  Future<Response> sendContent(
      @Header('Authorization') String authorizationBearer,
      @Part('message') String message,
      @PartFile('image') String imagePath);
}
