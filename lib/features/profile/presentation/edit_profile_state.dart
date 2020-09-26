import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'edit_profile_state.freezed.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  factory EditProfileState({
    @required bool progressBarVisible,
    @nullable User user,
  }) = _EditProfileState;

  factory EditProfileState.loading() {
    return EditProfileState(user: null, progressBarVisible: true);
  }

  factory EditProfileState.success(User user) {
    return EditProfileState(user: user, progressBarVisible: false);
  }
}
