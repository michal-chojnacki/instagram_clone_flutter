import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'edit_profile_state.freezed.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  factory EditProfileState({
    @required bool progressBarVisible,
    @nullable User user,
    @nullable Function onRetry,
  }) = _EditProfileState;

  factory EditProfileState.loading() {
    return EditProfileState(
        user: null, progressBarVisible: true, onRetry: null);
  }

  factory EditProfileState.success(User user) {
    return EditProfileState(
        user: user, progressBarVisible: false, onRetry: null);
  }

  factory EditProfileState.error(Function onRetry) {
    return EditProfileState(
        user: null, progressBarVisible: false, onRetry: onRetry);
  }
}
