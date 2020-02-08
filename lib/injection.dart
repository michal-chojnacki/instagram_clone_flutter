import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/built_value_converter.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_local_data_source.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_service.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:instagram_clone/injection.iconfig.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectableInit
void configureInjection() {
  $initGetIt();

  getIt
    ..registerLazySingleton<ChopperClient>(() => ChopperClient(
          baseUrl: "http://10.0.2.2:8080",
          converter: BuiltValueConverter(),
        ))
    ..registerLazySingleton<Future<SharedPreferences>>(
        () => SharedPreferences.getInstance())
    ..registerFactory<AuthenticationService>(
        () => AuthenticationService.create(getIt<ChopperClient>()))
    ..registerFactory<ContentService>(
        () => ContentService.create(getIt<ChopperClient>()))
    ..registerLazySingleton<AuthenticationLocalDataSource>(() =>
        AuthenticationLocalDataSourceImpl(getIt<Future<SharedPreferences>>()));
}
