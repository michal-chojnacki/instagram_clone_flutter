// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart';
import 'package:http/http.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:http/io_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/authenticate/domain/authenticate_user_use_case.dart';
import 'features/authenticate/data/authentication_local_data_source.dart';
import 'features/authenticate/domain/authentication_repository.dart';
import 'features/authenticate/data/authentication_repository_impl.dart';
import 'features/authenticate/data/authentication_repository_mock_impl.dart';
import 'features/authenticate/data/authentication_service.dart';
import 'features/profile/domain/change_like_use_case.dart';
import 'features/profile/domain/change_observation_use_case.dart';
import 'features/authenticate/domain/clear_authentication_token_use_case.dart';
import 'features/content/presentation/item/content_item_bloc.dart';
import 'features/content/data/mapper/content_mapper.dart';
import 'features/content/data/content_service.dart';
import 'features/profile/presentation/edit_profile_bloc.dart';
import 'features/profile/domain/get_all_followees_use_case.dart';
import 'features/profile/domain/get_all_followers_use_case.dart';
import 'features/content/domain/get_content_with_query_use_case.dart';
import 'features/content/domain/get_contents_for_user_use_case.dart';
import 'features/profile/domain/get_likes_statuses_use_case.dart';
import 'features/content/domain/get_main_content_use_case.dart';
import 'features/profile/domain/get_observation_status_use_case.dart';
import 'features/content/domain/get_recommended_content_use_case.dart';
import 'features/profile/domain/get_recommended_profiles_use_case.dart';
import 'features/content/domain/get_user_contents_use_case.dart';
import 'features/profile/domain/get_user_data_use_case.dart';
import 'features/content/data/mapper/image_mapper.dart';
import 'features/content/presentation/init/init_bloc.dart';
import 'features/authenticate/domain/load_authorization_token_use_case.dart';
import 'features/authenticate/presentation/login_page_bloc.dart';
import 'features/content/presentation/main_contents/main_contents_bloc.dart';
import 'features/content/presentation/common/main_user_bloc.dart';
import 'features/content/presentation/common/model/personalized_content.dart';
import 'features/content/presentation/recommended_profiles/recommended_profiles_bloc.dart';
import 'injection.dart';
import 'features/authenticate/domain/register_user_use_case.dart';
import 'features/content/presentation/search/search_for_content_bloc.dart';
import 'features/content/presentation/add_content/send_content_bloc.dart';
import 'features/content/domain/send_content_use_case.dart';
import 'features/profile/domain/update_user_data_use_case.dart';
import 'features/content/domain/user_content_repository.dart';
import 'features/content/data/user_content_repository_impl.dart';
import 'features/content/data/user_content_repository_mock_impl.dart';
import 'features/content/presentation/common/user_contents_grid_bloc.dart';
import 'features/profile/domain/user_data_repository.dart';
import 'features/profile/data/user_data_repository_impl.dart';
import 'features/profile/data/user_data_repository_mock_impl.dart';
import 'features/profile/data/user_data_service.dart';
import 'features/profile/presentation/user_list_bloc.dart';
import 'features/content/data/mapper/user_mapper.dart';
import 'features/profile/presentation/user_profile_bloc.dart';
import 'features/authenticate/domain/verify_authorization_token_use_case.dart';

/// Environment names
const _mock = 'mock';
const _prod = 'prod';
const _dev = 'dev';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryMockImpl(),
      registerFor: {_mock});
  gh.lazySingleton<ChopperClient>(() => registerModule.chopperClient);
  gh.factory<ClearAuthenticationTokenUseCase>(
      () => ClearAuthenticationTokenUseCase(get<AuthenticationRepository>()));
  gh.lazySingleton<Client>(() => registerModule.create);
  gh.factory<ContentService>(() => ContentService.create(get<ChopperClient>()));
  gh.factory<ImageMapper>(() => ImageMapper());
  gh.factory<LoadAuthorizationTokenUseCase>(
      () => LoadAuthorizationTokenUseCase(get<AuthenticationRepository>()));
  gh.factory<MainUserBloc>(() => MainUserBloc());
  gh.factory<RegisterUserUseCase>(
      () => RegisterUserUseCase(get<AuthenticationRepository>()));
  final sharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<UserContentRepository>(() => UserContentRepositoryMockImpl(),
      registerFor: {_mock});
  gh.lazySingleton<UserDataRepository>(() => UserDataRepositoryMockImpl(),
      registerFor: {_mock});
  gh.factory<UserDataService>(
      () => UserDataService.create(get<ChopperClient>()));
  gh.factory<UserMapper>(() => UserMapper(get<ImageMapper>()));
  gh.factory<AuthenticateUserUseCase>(
      () => AuthenticateUserUseCase(get<AuthenticationRepository>()));
  gh.lazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(get<SharedPreferences>()));
  gh.factory<AuthenticationService>(
      () => AuthenticationService.create(get<ChopperClient>()));
  gh.factory<ChangeLikeUseCase>(() => ChangeLikeUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<ChangeObservationUseCase>(() => ChangeObservationUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factoryParam<ContentItemBloc, PersonalizedContent, dynamic>(
      (personalizedContent, _) =>
          ContentItemBloc(get<ChangeLikeUseCase>(), personalizedContent));
  gh.factory<ContentMapper>(
      () => ContentMapper(get<ImageMapper>(), get<UserMapper>()));
  gh.factory<GetAllFolloweesUseCase>(() => GetAllFolloweesUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetAllFollowersUseCase>(() => GetAllFollowersUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetLikesStatusesUseCase>(() => GetLikesStatusesUseCase(
      get<LoadAuthorizationTokenUseCase>(), get<UserDataRepository>()));
  gh.factory<GetMainContentUseCase>(() => GetMainContentUseCase(
        get<UserContentRepository>(),
        get<LoadAuthorizationTokenUseCase>(),
        get<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetObservationStatusUseCase>(() => GetObservationStatusUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetRecommendedContentUseCase>(() => GetRecommendedContentUseCase(
        get<UserContentRepository>(),
        get<LoadAuthorizationTokenUseCase>(),
        get<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetRecommendedProfilesUseCase>(() => GetRecommendedProfilesUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetUserContentsUseCase>(() => GetUserContentsUseCase(
        get<UserContentRepository>(),
        get<LoadAuthorizationTokenUseCase>(),
        get<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetUserDataUseCase>(() => GetUserDataUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<LoginPageBloc>(() => LoginPageBloc(
      get<AuthenticateUserUseCase>(), get<RegisterUserUseCase>()));
  gh.factory<MainContentsBloc>(
      () => MainContentsBloc(get<GetMainContentUseCase>()));
  gh.factory<RecommendedProfilesBloc>(() => RecommendedProfilesBloc(
      get<GetRecommendedProfilesUseCase>(), get<ChangeObservationUseCase>()));
  gh.factory<SendContentUseCase>(() => SendContentUseCase(
      get<UserContentRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<UpdateUserDataUseCase>(() => UpdateUserDataUseCase(
      get<UserDataRepository>(), get<LoadAuthorizationTokenUseCase>()));
  gh.factory<UserContentRepository>(
      () => UserContentRepositoryImpl(
          get<ContentService>(), get<ContentMapper>()),
      registerFor: {_prod, _dev});
  gh.factory<UserDataRepository>(
      () => UserDataRepositoryImpl(get<UserDataService>(), get<UserMapper>()),
      registerFor: {_prod, _dev});
  gh.factory<UserListBloc>(() => UserListBloc(
      get<GetAllFollowersUseCase>(), get<GetAllFolloweesUseCase>()));
  gh.factory<UserProfileBloc>(() => UserProfileBloc(
        get<ChangeObservationUseCase>(),
        get<GetObservationStatusUseCase>(),
        get<GetUserDataUseCase>(),
      ));
  gh.factory<VerifyAuthorizationTokenUseCase>(() =>
      VerifyAuthorizationTokenUseCase(
          get<ClearAuthenticationTokenUseCase>(), get<GetUserDataUseCase>()));
  gh.factory<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
          get<AuthenticationService>(), get<AuthenticationLocalDataSource>()),
      registerFor: {_prod, _dev});
  gh.factory<EditProfileBloc>(() => EditProfileBloc(
        get<GetUserDataUseCase>(),
        get<UpdateUserDataUseCase>(),
        get<ClearAuthenticationTokenUseCase>(),
      ));
  gh.factory<GetContentWithQueryUseCase>(() => GetContentWithQueryUseCase(
        get<UserContentRepository>(),
        get<LoadAuthorizationTokenUseCase>(),
        get<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetContentsForUserUseCase>(() => GetContentsForUserUseCase(
        get<UserContentRepository>(),
        get<LoadAuthorizationTokenUseCase>(),
        get<GetLikesStatusesUseCase>(),
      ));
  gh.factory<InitBloc>(() => InitBloc(get<VerifyAuthorizationTokenUseCase>()));
  gh.factory<SearchForContentBloc>(() => SearchForContentBloc(
      get<GetContentWithQueryUseCase>(), get<GetRecommendedContentUseCase>()));
  gh.factory<SendContentBloc>(() => SendContentBloc(get<SendContentUseCase>()));
  gh.factory<UserContentsGridBloc>(() => UserContentsGridBloc(
      get<GetContentsForUserUseCase>(), get<GetUserContentsUseCase>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
