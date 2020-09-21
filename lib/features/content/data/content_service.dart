import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/data/model/raw_contents.dart';

part "content_service.chopper.dart";

@injectable
@ChopperApi(baseUrl: "/")
abstract class ContentService extends ChopperService {
  @factoryMethod
  static ContentService create([ChopperClient client]) =>
      _$ContentService(client);

  @Get(path: 'main_content')
  Future<Response<RawContents>> getMainContent(
      @Header("Authorization") String authorizationBearer,
      @Query("page") int page);

  @Get(path: 'recommended_content')
  Future<Response<RawContents>> getRecommendedContent(
      @Header("Authorization") String authorizationBearer,
      @Query("page") int page);

  @Get(path: 'search_content')
  Future<Response<RawContents>> searchContent(
      @Header("Authorization") String authorizationBearer,
      @Query("query") String query,
      @Query("page") int page);

  @Get(path: 'content')
  Future<Response<RawContents>> getUserContentById(
      @Header("Authorization") String authorizationBearer,
      @Query("user") int userId,
      @Query("page") int page);

  @Get(path: 'content')
  Future<Response<RawContents>> getUserContent(
      @Header("Authorization") String authorizationBearer,
      @Query("page") int page);

  @Post(path: 'content')
  @multipart
  Future<Response> sendContent(
      @Header("Authorization") String authorizationBearer,
      @Part("message") String message,
      @PartFile("image") String imagePath);
}
