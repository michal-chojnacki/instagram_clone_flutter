import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'user_profile_state.freezed.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  factory UserProfileState({
    @required bool observing,
    @required bool progressBarVisible,
    @nullable User user,
  }) = _UserProfileState;

  factory UserProfileState.loading(User user) {
    return UserProfileState(
        observing: false, progressBarVisible: true, user: user);
  }

  factory UserProfileState.success(User user, bool observing) {
    return UserProfileState(
        observing: observing, progressBarVisible: false, user: user);
  }
}
