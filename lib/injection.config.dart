// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart';
import 'package:http/http.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:http/io_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/authenticate/domain/authenticate_user_use_case.dart';
import 'features/authenticate/data/authentication_local_data_source.dart';
import 'features/authenticate/domain/authentication_repository.dart';
import 'features/authenticate/data/authentication_repository_impl.dart';
import 'features/authenticate/data/authentication_repository_mock_impl.dart';
import 'features/authenticate/data/authentication_service.dart';
import 'core/built_value_converter.dart';
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
import 'features/authenticate/domain/load_authorization_token_use_case.dart';
import 'features/authenticate/presentation/login_page_bloc.dart';
import 'features/content/presentation/main/main_bloc.dart';
import 'features/content/presentation/main_contents/main_contents_bloc.dart';
import 'features/content/presentation/common/page/main_user_bloc.dart';
import 'navigation/navigation_bloc.dart';
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
import 'features/profile/presentation/user_list/user_list_bloc.dart';
import 'features/content/data/mapper/user_mapper.dart';
import 'features/profile/presentation/page/user_profile_bloc.dart';
import 'features/authenticate/domain/verify_authorization_token_use_case.dart';

/// Environment names
const _mock = 'mock';
const _prod = 'prod';
const _dev = 'dev';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryMockImpl(),
      registerFor: {_mock});
  gh.factory<BuiltValueConverter>(() => BuiltValueConverter());
  gh.lazySingleton<ChopperClient>(() => registerModule.chopperClient);
  gh.factory<ClearAuthenticationTokenUseCase>(
      () => ClearAuthenticationTokenUseCase(g<AuthenticationRepository>()));
  gh.lazySingleton<Client>(() => registerModule.create);
  gh.factory<ContentService>(() => ContentService.create(g<ChopperClient>()));
  gh.factory<ImageMapper>(() => ImageMapper());
  gh.factory<LoadAuthorizationTokenUseCase>(
      () => LoadAuthorizationTokenUseCase(g<AuthenticationRepository>()));
  gh.lazySingleton<NavigationBloc>(() => NavigationBloc());
  gh.factory<RegisterUserUseCase>(
      () => RegisterUserUseCase(g<AuthenticationRepository>()));
  final sharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<UserContentRepository>(() => UserContentRepositoryMockImpl(),
      registerFor: {_mock});
  gh.lazySingleton<UserDataRepository>(() => UserDataRepositoryMockImpl(),
      registerFor: {_mock});
  gh.factory<UserDataService>(() => UserDataService.create(g<ChopperClient>()));
  gh.factory<UserMapper>(() => UserMapper(g<ImageMapper>()));
  gh.factory<AuthenticateUserUseCase>(
      () => AuthenticateUserUseCase(g<AuthenticationRepository>()));
  gh.lazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(g<SharedPreferences>()));
  gh.factory<AuthenticationService>(
      () => AuthenticationService.create(g<ChopperClient>()));
  gh.factory<ChangeLikeUseCase>(() => ChangeLikeUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<ChangeObservationUseCase>(() => ChangeObservationUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factoryParam<ContentItemBloc, PersonalizedContent, dynamic>(
      (personalizedContent, _) => ContentItemBloc(
            g<NavigationBloc>(),
            g<ChangeLikeUseCase>(),
            personalizedContent,
          ));
  gh.factory<ContentMapper>(
      () => ContentMapper(g<ImageMapper>(), g<UserMapper>()));
  gh.factory<GetAllFolloweesUseCase>(() => GetAllFolloweesUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetAllFollowersUseCase>(() => GetAllFollowersUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetLikesStatusesUseCase>(() => GetLikesStatusesUseCase(
      g<LoadAuthorizationTokenUseCase>(), g<UserDataRepository>()));
  gh.factory<GetMainContentUseCase>(() => GetMainContentUseCase(
        g<UserContentRepository>(),
        g<LoadAuthorizationTokenUseCase>(),
        g<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetObservationStatusUseCase>(() => GetObservationStatusUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetRecommendedContentUseCase>(() => GetRecommendedContentUseCase(
        g<UserContentRepository>(),
        g<LoadAuthorizationTokenUseCase>(),
        g<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetRecommendedProfilesUseCase>(() => GetRecommendedProfilesUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<GetUserContentsUseCase>(() => GetUserContentsUseCase(
        g<UserContentRepository>(),
        g<LoadAuthorizationTokenUseCase>(),
        g<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetUserDataUseCase>(() => GetUserDataUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<LoginPageBloc>(() => LoginPageBloc(
        g<NavigationBloc>(),
        g<AuthenticateUserUseCase>(),
        g<RegisterUserUseCase>(),
      ));
  gh.factory<MainContentsBloc>(
      () => MainContentsBloc(g<NavigationBloc>(), g<GetMainContentUseCase>()));
  gh.factory<MainUserBloc>(() => MainUserBloc(g<NavigationBloc>()));
  gh.factory<RecommendedProfilesBloc>(() => RecommendedProfilesBloc(
        g<NavigationBloc>(),
        g<GetRecommendedProfilesUseCase>(),
        g<ChangeObservationUseCase>(),
      ));
  gh.factory<SendContentUseCase>(() => SendContentUseCase(
      g<UserContentRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<UpdateUserDataUseCase>(() => UpdateUserDataUseCase(
      g<UserDataRepository>(), g<LoadAuthorizationTokenUseCase>()));
  gh.factory<UserContentRepository>(
      () => UserContentRepositoryImpl(g<ContentService>(), g<ContentMapper>()),
      registerFor: {_prod, _dev});
  gh.factory<UserDataRepository>(
      () => UserDataRepositoryImpl(g<UserDataService>(), g<UserMapper>()),
      registerFor: {_prod, _dev});
  gh.factory<UserListBloc>(() =>
      UserListBloc(g<GetAllFollowersUseCase>(), g<GetAllFolloweesUseCase>()));
  gh.factory<UserProfileBloc>(() => UserProfileBloc(
      g<ChangeObservationUseCase>(), g<GetObservationStatusUseCase>()));
  gh.factory<VerifyAuthorizationTokenUseCase>(() =>
      VerifyAuthorizationTokenUseCase(
          g<ClearAuthenticationTokenUseCase>(), g<GetUserDataUseCase>()));
  gh.factory<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
          g<AuthenticationService>(), g<AuthenticationLocalDataSource>()),
      registerFor: {_prod, _dev});
  gh.factory<GetContentWithQueryUseCase>(() => GetContentWithQueryUseCase(
        g<UserContentRepository>(),
        g<LoadAuthorizationTokenUseCase>(),
        g<GetLikesStatusesUseCase>(),
      ));
  gh.factory<GetContentsForUserUseCase>(() => GetContentsForUserUseCase(
        g<UserContentRepository>(),
        g<LoadAuthorizationTokenUseCase>(),
        g<GetLikesStatusesUseCase>(),
      ));
  gh.lazySingleton<MainBloc>(() =>
      MainBloc(g<VerifyAuthorizationTokenUseCase>(), g<NavigationBloc>()));
  gh.factory<SearchForContentBloc>(() => SearchForContentBloc(
      g<GetContentWithQueryUseCase>(), g<GetRecommendedContentUseCase>()));
  gh.factory<SendContentBloc>(
      () => SendContentBloc(g<NavigationBloc>(), g<SendContentUseCase>()));
  gh.factory<UserContentsGridBloc>(() => UserContentsGridBloc(
      g<GetContentsForUserUseCase>(), g<GetUserContentsUseCase>()));
  gh.factory<EditProfileBloc>(() => EditProfileBloc(
        g<MainBloc>(),
        g<NavigationBloc>(),
        g<GetUserDataUseCase>(),
        g<UpdateUserDataUseCase>(),
        g<ClearAuthenticationTokenUseCase>(),
      ));
}

class _$RegisterModule extends RegisterModule {}
