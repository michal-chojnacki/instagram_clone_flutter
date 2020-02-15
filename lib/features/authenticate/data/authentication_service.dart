import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_credentials.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_token.dart';

part "authentication_service.chopper.dart";

@injectable
@ChopperApi(baseUrl: "/")
abstract class AuthenticationService extends ChopperService {
  @factoryMethod
  static AuthenticationService create([ChopperClient client]) => _$AuthenticationService(client);

  @Post(path: 'authenticate')
  Future<Response<RawToken>> authenticate(@Body() RawCredentials rawCredentials);

    @Post(path: 'register')
  Future<Response<RawToken>> register(@Body() RawCredentials rawCredentials);
}
