import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/built_value_converter.dart';
import 'package:instagram_clone/injection.config.dart';
import 'package:instagram_clone/config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

const mock = const Environment('mock');

@injectableInit
Future<void> configureInjection({@required Environment environment}) async {
  await $initGetIt(GetIt.instance, environment: environment.name);
}

@module
abstract class RegisterModule {
  @LazySingleton(as: Client)
  IOClient get create => IOClient(HttpClient()
    ..connectionTimeout = const Duration(seconds: 5)
    ..proxy = false);

  @lazySingleton
  ChopperClient get chopperClient => ChopperClient(
          baseUrl: GetIt.I<String>(instanceName: "baseUrl"),
          converter: GetIt.I<BuiltValueConverter>(),
          client: GetIt.I<Client>(),
          interceptors: [
            HeadersInterceptor(
                {'ApiKey': GetIt.I<String>(instanceName: "apiKey")})
          ]);

  @Named("baseUrl")
  @prod
  @injectable
  String get prodBaseUrl => ProdBaseUrl;

  @Named("baseUrl")
  @dev
  @mock
  @injectable
  String get devBaseUrl => StageBaseUrl;

  @Named("apiKey")
  @prod
  @injectable
  String get prodApiKey => ProdApiKey;

  @Named("apiKey")
  @dev
  @mock
  @injectable
  String get devApiKey => StageApiKey;

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

extension HttpClientProxy on HttpClient {
  String get proxyIp => '192.168.1.11';

  String get proxyAddress =>
      Platform.isAndroid ? '$proxyIp:8888' : 'localhost:8888';

  set proxy(bool withProxy) {
    if (!withProxy) {
      return;
    }
    findProxy = (uri) {
      return "PROXY $proxyAddress;";
    };
    badCertificateCallback =
        ((X509Certificate cert, String host, int port) => Platform.isAndroid);
  }
}
