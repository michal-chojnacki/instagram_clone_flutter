import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

part 'authentication_service.chopper.dart';

@injectable
@ChopperApi(baseUrl: '/')
abstract class AuthenticationService extends ChopperService {
  @factoryMethod
  static AuthenticationService create([ChopperClient client]) =>
      _$AuthenticationService(client);

  @Post(path: 'authenticate')
  Future<Response> authenticate(@Body() Map<String, dynamic> rawCredentials);

  @Post(path: 'register')
  Future<Response> register(@Body() Map<String, dynamic> rawCredentials);
}
