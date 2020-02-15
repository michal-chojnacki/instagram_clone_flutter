// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:instagram_clone/core/built_value_converter.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:instagram_clone/features/content/data/mapper/image_mapper.dart';
import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:chopper/src/base.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_local_data_source.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_service.dart';
import 'package:instagram_clone/features/content/data/mapper/user_mapper.dart';
import 'package:instagram_clone/features/content/data/mapper/content_mapper.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_repository_impl.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/register_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_bloc.dart';
import 'package:instagram_clone/features/content/data/user_content_repository_impl.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/features/content/domain/load_main_content_use_case.dart';
import 'package:instagram_clone/features/content/domain/send_content_use_case.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_bloc.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  g.registerFactory<BuiltValueConverter>(() => BuiltValueConverter());
  g.registerLazySingleton<NavigationBloc>(() => NavigationBloc());
  g.registerFactory<ImageMapper>(() => ImageMapper());
  g.registerLazySingleton<ChopperClient>(() => ChopperClient(
        baseUrl: "http://10.0.2.2:8080",
        converter: GetIt.I<BuiltValueConverter>(),
      ));
  final sharedPreferences = await SharedPreferences.getInstance();
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(
            g<SharedPreferences>(),
          ));
  g.registerFactory<AuthenticationService>(() => AuthenticationService.create(
        g<ChopperClient>(),
      ));
  g.registerFactory<ContentService>(() => ContentService.create(
        g<ChopperClient>(),
      ));
  g.registerFactory<UserMapper>(() => UserMapper(
        g<ImageMapper>(),
      ));
  g.registerFactory<ContentMapper>(() => ContentMapper(
        g<ImageMapper>(),
        g<UserMapper>(),
      ));
  g.registerFactory<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
            g<AuthenticationService>(),
            g<AuthenticationLocalDataSource>(),
          ));
  g.registerFactory<LoadAuthorizationTokenUseCase>(
      () => LoadAuthorizationTokenUseCase(
            g<AuthenticationRepository>(),
          ));
  g.registerFactory<AuthenticateUserUseCase>(() => AuthenticateUserUseCase(
        g<AuthenticationRepository>(),
      ));
  g.registerFactory<RegisterUserUseCase>(() => RegisterUserUseCase(
        g<AuthenticationRepository>(),
      ));
  g.registerFactory<LoginPageBloc>(() => LoginPageBloc(
        g<AuthenticateUserUseCase>(),
        g<RegisterUserUseCase>(),
      ));
  g.registerFactory<UserContentRepository>(() => UserContentRepositoryImpl(
        g<ContentService>(),
        g<ContentMapper>(),
      ));
  g.registerFactory<LoadMainContentUseCase>(() => LoadMainContentUseCase(
        g<UserContentRepository>(),
        g<LoadAuthorizationTokenUseCase>(),
      ));
  g.registerFactory<SendContentUseCase>(() => SendContentUseCase(
        g<UserContentRepository>(),
        g<LoadAuthorizationTokenUseCase>(),
      ));
  g.registerFactory<SendContentBloc>(() => SendContentBloc(
        g<SendContentUseCase>(),
      ));
  g.registerFactory<MainContentsBloc>(() => MainContentsBloc(
        g<LoadMainContentUseCase>(),
      ));
}
