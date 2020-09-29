import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_profile_state.freezed.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  factory UserProfileState({
    @required bool observing,
    @required bool progressBarVisible,
  }) = _UserProfileState;

  factory UserProfileState.loading() {
    return UserProfileState(observing: false, progressBarVisible: true);
  }

  factory UserProfileState.success(bool observing) {
    return UserProfileState(observing: observing, progressBarVisible: false);
  }

  factory UserProfileState.setObservation(bool observing) {
    return UserProfileState(observing: observing, progressBarVisible: false);
  }
}
