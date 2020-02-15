import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/built_value_converter.dart';
import 'package:instagram_clone/injection.iconfig.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectableInit
Future<void> configureInjection() async {
  await $initGetIt(GetIt.instance);
}

@registerModule
abstract class RegisterModule {
  @lazySingleton
  ChopperClient get dio => ChopperClient(
        baseUrl: "http://10.0.2.2:8080",
        converter: GetIt.I<BuiltValueConverter>(),
      );
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
