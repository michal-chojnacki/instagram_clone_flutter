import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/data/model/raw_contents.dart';

part "content_service.chopper.dart";

@injectable
@ChopperApi(baseUrl: "/")
abstract class ContentService extends ChopperService {
  @factoryMethod
  static ContentService create([ChopperClient client]) => _$ContentService(client);

  @Get(path: 'main_content')
  Future<Response<RawContents>> getMainContent(
      @Header("Authorization") String authorizationBearer);

  @Post(path: 'content')
  @multipart
  Future<Response> sendContent(
      @Header("Authorization") String authorizationBearer,
      @Part("message") String message,
      @PartFile("image") MultipartFile image);
}
