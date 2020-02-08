import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:instagram_clone/features/content/data/model/raw_contents.dart';

part "content_service.chopper.dart";

@ChopperApi(baseUrl: "/")
abstract class ContentService extends ChopperService {
  static ContentService create([ChopperClient client]) => _$ContentService(client);

  @Get(path: 'main_content')
  Future<Response<RawContents>> getMainContent(@Header("Authorization") String authorizationBearer);
}
