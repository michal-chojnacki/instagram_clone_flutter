// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:instagram_clone/features/authenticate/data/authentication_repository_impl.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_service.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_local_data_source.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_bloc.dart';
import 'package:instagram_clone/features/content/data/user_content_repository_impl.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:instagram_clone/features/content/data/mapper/content_mapper.dart';
import 'package:instagram_clone/features/content/domain/load_main_content_use_case.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/features/content/data/mapper/user_mapper.dart';
import 'package:instagram_clone/features/content/data/mapper/image_mapper.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerFactory<AuthenticationRepositoryImpl>(() => AuthenticationRepositoryImpl(
        getIt<AuthenticationService>(), getIt<AuthenticationLocalDataSource>()))
    ..registerFactory<LoadAuthorizationTokenUseCase>(
        () => LoadAuthorizationTokenUseCase(getIt<AuthenticationRepository>()))
    ..registerFactory<AuthenticateUserUseCase>(
        () => AuthenticateUserUseCase(getIt<AuthenticationRepository>()))
    ..registerFactory<AuthenticationRepository>(() => AuthenticationRepositoryImpl(
        getIt<AuthenticationService>(), getIt<AuthenticationLocalDataSource>()))
    ..registerFactory<LoginPageBloc>(
        () => LoginPageBloc(getIt<AuthenticateUserUseCase>()))
    ..registerFactory<UserContentRepositoryImpl>(() =>
        UserContentRepositoryImpl(
            getIt<ContentService>(), getIt<ContentMapper>()))
    ..registerFactory<LoadMainContentUseCase>(() => LoadMainContentUseCase(
        getIt<UserContentRepository>(), getIt<LoadAuthorizationTokenUseCase>()))
    ..registerFactory<UserContentRepository>(() => UserContentRepositoryImpl(getIt<ContentService>(), getIt<ContentMapper>()))
    ..registerFactory<UserMapper>(() => UserMapper(getIt<ImageMapper>()))
    ..registerFactory<ContentMapper>(() => ContentMapper(getIt<ImageMapper>(), getIt<UserMapper>()))
    ..registerFactory<ImageMapper>(() => ImageMapper())
    ..registerLazySingleton<NavigationBloc>(() => NavigationBloc())
    ..registerFactory<MainContentsBloc>(() => MainContentsBloc(getIt<LoadMainContentUseCase>()));
}
