// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:instagram_clone/core/built_value_converter.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_repository_mock_impl.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/register_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_bloc.dart';
import 'package:instagram_clone/features/content/data/user_content_repository_mock_impl.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/features/content/data/mapper/image_mapper.dart';
import 'package:instagram_clone/features/content/domain/get_main_content_use_case.dart';
import 'package:instagram_clone/features/content/domain/get_recommended_content_use_case.dart';
import 'package:instagram_clone/features/content/domain/get_user_contents_use_case.dart';
import 'package:instagram_clone/features/content/domain/send_content_use_case.dart';
import 'package:instagram_clone/features/content/domain/get_content_with_query_use_case.dart';
import 'package:instagram_clone/features/content/domain/get_contents_for_user_use_case.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_bloc.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_bloc.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_bloc.dart';
import 'package:instagram_clone/features/content/presentation/search/search_for_content_bloc.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository_impl.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository_mock_impl.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/domain/update_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/domain/change_observation_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_observation_status_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_bloc.dart';
import 'package:http/src/io_client.dart';
import 'package:http/src/client.dart';
import 'package:instagram_clone/injection.dart';
import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_local_data_source.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_service.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:instagram_clone/features/content/data/mapper/user_mapper.dart';
import 'package:instagram_clone/features/content/data/mapper/content_mapper.dart';
import 'package:instagram_clone/features/authenticate/data/authentication_repository_impl.dart';
import 'package:instagram_clone/features/content/data/user_content_repository_impl.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerFactory<BuiltValueConverter>(() => BuiltValueConverter());
  g.registerLazySingleton<NavigationBloc>(() => NavigationBloc());
  g.registerFactory<LoadAuthorizationTokenUseCase>(
      () => LoadAuthorizationTokenUseCase(g<AuthenticationRepository>()));
  g.registerFactory<AuthenticateUserUseCase>(
      () => AuthenticateUserUseCase(g<AuthenticationRepository>()));
  g.registerFactory<RegisterUserUseCase>(
      () => RegisterUserUseCase(g<AuthenticationRepository>()));
  g.registerFactory<LoginPageBloc>(() =>
      LoginPageBloc(g<AuthenticateUserUseCase>(), g<RegisterUserUseCase>()));
  g.registerFactory<ImageMapper>(() => ImageMapper());
  g.registerFactory<GetMainContentUseCase>(() => GetMainContentUseCase(
      g<UserContentRepository>(), g<LoadAuthorizationTokenUseCase>()));
  g.registerFactory<GetRecommendedContentUseCase>(() =>
      GetRecommendedContentUseCase(
          g<UserContentRepository>(), g<LoadAuthorizationTokenUseCase>()));
  g.registerFactory<GetUserContentsUseCase>(() => GetUserContentsUseCase(
      g<UserContentRepository>(), g<LoadAuthorizationTokenUseCase>()));
  g.registerFactory<SendContentUseCase>(() => SendContentUseCase(
      g<UserContentRepository>(), g<LoadAuthorizationTokenUseCase>()));
  g.registerFactory<GetContentWithQueryUseCase>(() =>
      GetContentWithQueryUseCase(
          g<UserContentRepository>(), g<LoadAuthorizationTokenUseCase>()));
  g.registerFactory<GetContentsForUserUseCase>(() => GetContentsForUserUseCase(
      g<UserContentRepository>(), g<LoadAuthorizationTokenUseCase>()));
  g.registerFactory<SendContentBloc>(
      () => SendContentBloc(g<SendContentUseCase>()));
  g.registerFactory<UserContentsGridBloc>(() => UserContentsGridBloc(
      g<GetContentsForUserUseCase>(), g<GetUserContentsUseCase>()));
  g.registerFactory<MainContentsBloc>(
      () => MainContentsBloc(g<GetMainContentUseCase>()));
  g.registerFactory<SearchForContentBloc>(() => SearchForContentBloc(
      g<GetContentWithQueryUseCase>(), g<GetRecommendedContentUseCase>()));
  g.registerFactory<GetUserDataUseCase>(
      () => GetUserDataUseCase(g<UserDataRepository>()));
  g.registerFactory<UpdateUserDataUseCase>(
      () => UpdateUserDataUseCase(g<UserDataRepository>()));
  g.registerFactory<ChangeObservationUseCase>(
      () => ChangeObservationUseCase(g<UserDataRepository>()));
  g.registerFactory<GetObservationStatusUseCase>(
      () => GetObservationStatusUseCase(g<UserDataRepository>()));
  g.registerFactory<UserProfileBloc>(() => UserProfileBloc(
      g<ChangeObservationUseCase>(), g<GetObservationStatusUseCase>()));
  g.registerFactory<EditProfileBloc>(() =>
      EditProfileBloc(g<GetUserDataUseCase>(), g<UpdateUserDataUseCase>()));
  g.registerFactory<Client>(() => registerModule.create);
  g.registerFactory<ChopperClient>(() => registerModule.chopperClient);
  final sharedPreferences = await registerModule.prefs;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(g<SharedPreferences>()));
  g.registerFactory<AuthenticationService>(
      () => AuthenticationService.create(g<ChopperClient>()));
  g.registerFactory<ContentService>(
      () => ContentService.create(g<ChopperClient>()));
  g.registerFactory<UserMapper>(() => UserMapper(g<ImageMapper>()));
  g.registerFactory<ContentMapper>(
      () => ContentMapper(g<ImageMapper>(), g<UserMapper>()));

  //Register mock Dependencies --------
  if (environment == 'mock') {
    g.registerFactory<AuthenticationRepository>(
        () => AuthenticationRepositoryMockImpl());
    g.registerFactory<UserContentRepository>(
        () => UserContentRepositoryMockImpl());
    g.registerLazySingleton<UserDataRepository>(
        () => UserDataRepositoryMockImpl());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<UserDataRepository>(() => UserDataRepositoryImpl());
    g.registerFactory<AuthenticationRepository>(() =>
        AuthenticationRepositoryImpl(
            g<AuthenticationService>(), g<AuthenticationLocalDataSource>()));
    g.registerFactory<UserContentRepository>(() =>
        UserContentRepositoryImpl(g<ContentService>(), g<ContentMapper>()));
  }
}

class _$RegisterModule extends RegisterModule {}
