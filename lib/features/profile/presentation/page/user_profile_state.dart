import 'package:built_value/built_value.dart';

part 'user_profile_state.g.dart';

abstract class UserProfileState
    implements Built<UserProfileState, UserProfileStateBuilder> {
  bool get observing;

  bool get progressBarVisible;

  UserProfileState._();

  factory UserProfileState([updates(UserProfileStateBuilder b)]) =
      _$UserProfileState;

  factory UserProfileState.loading() {
    return UserProfileState((b) => b
      ..observing = false
      ..progressBarVisible = true);
  }

  factory UserProfileState.success(bool observing) {
    return UserProfileState((b) => b
      ..observing = observing
      ..progressBarVisible = false);
  }

  factory UserProfileState.setObservation(bool observing) {
    return UserProfileState((b) => b
      ..observing = observing
      ..progressBarVisible = false);
  }
}
