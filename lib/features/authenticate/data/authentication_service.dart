import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_credentials.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_token.dart';

part "authentication_service.chopper.dart";

@ChopperApi(baseUrl: "/")
abstract class AuthenticationService extends ChopperService {
  static AuthenticationService create([ChopperClient client]) => _$AuthenticationService(client);

  @Post(path: 'authenticate')
  Future<Response<RawToken>> authenticate(@Body() RawCredentials rawCredentials);
}
