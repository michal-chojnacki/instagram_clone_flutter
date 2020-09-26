import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/injection.config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

const mock = Environment('mock');

@injectableInit
Future<void> configureInjection({@required Environment environment}) async {
  await DotEnv().load((environment == prod) ? '.env/prod' : '.env/dev');
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
          baseUrl: DotEnv().env['API_BASE_URL'],
          converter: JsonConverter(),
          client: GetIt.I<Client>(),
          interceptors: [
            HeadersInterceptor({'ApiKey': DotEnv().env['API_KEY']})
          ]);

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
      return 'PROXY $proxyAddress;';
    };
    badCertificateCallback =
        ((X509Certificate cert, String host, int port) => Platform.isAndroid);
  }
}
