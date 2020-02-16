import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/built_value_converter.dart';
import 'package:instagram_clone/injection.iconfig.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

@injectableInit
Future<void> configureInjection() async {
  await $initGetIt(GetIt.instance);
}

@registerModule
abstract class RegisterModule {
  @lazySingleton
  @RegisterAs(Client)
  IOClient get client => IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 5),
      );

  @lazySingleton
  ChopperClient get chopperClient => ChopperClient(
        baseUrl: "http://192.168.1.12:8080",
        converter: GetIt.I<BuiltValueConverter>(),
        client: GetIt.I<Client>(),
      );

  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
