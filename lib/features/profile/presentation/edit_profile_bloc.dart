import 'dart:wasm';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/domain/clear_authentication_token_use_case.dart';
import 'package:instagram_clone/features/content/presentation/main/main_bloc.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/domain/update_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final MainBloc _mainBloc;
  final NavigationBloc _navigationBloc;
  final GetUserDataUseCase _getUserData;
  final UpdateUserDataUseCase _updateUserDataUseCase;
  final ClearAuthenticationTokenUseCase _clearAuthenticationTokenUseCase;

  EditProfileBloc(this._mainBloc, this._navigationBloc, this._getUserData,
      this._updateUserDataUseCase, this._clearAuthenticationTokenUseCase)
      : super(EditProfileState.loading());

  void fetchProfileData() {
    add(EditProfileEvent.fetchProfileData());
  }

  void openEditProfilePage(Function thenFunction) {
    _navigationBloc.openEditProfilePage(thenFunction);
  }

  void openPickImagePage() {
    _navigationBloc.openPickImagePage(
        ratio: 1.0,
        circleShaped: true,
        onImagePicked: (imagePath) {
          updateProfileData(avatarPath: imagePath);
          closeScreen();
        });
  }

  void updateProfileData(
      {String avatarPath, String bio, String username, String fullname}) {
    add(EditProfileEvent.updateProfileData(
        avatarPath: avatarPath,
        username: username,
        bio: bio,
        fullname: fullname));
  }

  void logout() {
    add(EditProfileEvent.logout());
  }

  void closeScreen() {
    _navigationBloc.pop();
  }

  @override
  Stream<EditProfileState> mapEventToState(EditProfileEvent event) {
    return event.when(
        fetchProfileData: () => _mapFetchProfileData(),
        updateProfileData:
            (String avatarPath, String username, String fullname, String bio) =>
                _mapUpdateProfileData(avatarPath, username, fullname, bio),
        logout: () => _mapLogout());
  }

  Stream<EditProfileState> _mapFetchProfileData() async* {
    yield EditProfileState.loading();
    yield (await _getUserData()).when(
        success: (data) => EditProfileState.success(data),
        error: (_) => EditProfileState.success(null));
  }

  Stream<EditProfileState> _mapUpdateProfileData(
      String avatarPath, String username, String fullname, String bio) async* {
    (await _updateUserDataUseCase(
            avatarPath: avatarPath,
            bio: bio,
            username: username,
            fullname: fullname))
        .when(success: (_) => {fetchProfileData()}, error: (_) => null);
  }

  Stream<EditProfileState> _mapLogout() async* {
    (await _clearAuthenticationTokenUseCase()).when(
        success: (_) => _mainBloc.verifyAuthenticationState(),
        error: (_) => Void);
  }
}
