import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/bloc_side_effects.dart';
import 'package:instagram_clone/features/authenticate/domain/clear_authentication_token_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/domain/update_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_side_effect.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState>
    with
        BlocSideEffects<EditProfileEvent, EditProfileState,
            EditProfileSideEffect> {
  final GetUserDataUseCase _getUserData;
  final UpdateUserDataUseCase _updateUserDataUseCase;
  final ClearAuthenticationTokenUseCase _clearAuthenticationTokenUseCase;

  EditProfileBloc(this._getUserData, this._updateUserDataUseCase,
      this._clearAuthenticationTokenUseCase)
      : super(EditProfileState.loading());

  void fetchProfileData() {
    add(EditProfileEvent.fetchProfileData());
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
        error: (_) => EditProfileState.error(fetchProfileData));
  }

  Stream<EditProfileState> _mapUpdateProfileData(
      String avatarPath, String username, String fullname, String bio) async* {
    (await _updateUserDataUseCase(
            avatarPath: avatarPath,
            bio: bio,
            username: username,
            fullname: fullname))
        .when(
            success: (_) =>
                addSideEffect(EditProfileSideEffect.updatedProfile()),
            error: (_) => {});
  }

  Stream<EditProfileState> _mapLogout() async* {
    (await _clearAuthenticationTokenUseCase()).when(
        success: (_) => addSideEffect(EditProfileSideEffect.openInitPage()),
        error: (_) => {});
  }
}
