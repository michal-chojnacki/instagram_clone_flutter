import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'user_profile_state.g.dart';

abstract class UserProfileState
    implements Built<UserProfileState, UserProfileStateBuilder> {
  BuiltList<Content> get contents;
  bool get observing;
  bool get progressBarVisible;

  UserProfileState._();

  factory UserProfileState([updates(UserProfileStateBuilder b)]) =
      _$UserProfileState;

  factory UserProfileState.loading() {
    return UserProfileState((b) => b
      ..contents = null
      ..observing = false
      ..progressBarVisible = true);
  }

  factory UserProfileState.success(List<Content> contents, bool observing) {
    return UserProfileState((b) => b
      ..contents = contents.toBuiltList().toBuilder()
      ..observing = observing
      ..progressBarVisible = false);
  }

  factory UserProfileState.setObservation(UserProfileState state, bool observing) {
    return UserProfileState((b) => b
      ..contents = state.contents.toBuilder()
      ..observing = observing
      ..progressBarVisible = state.progressBarVisible);
  }
}
