import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'user_profile_state.g.dart';

abstract class UserProfileState
    implements Built<UserProfileState, UserProfileStateBuilder> {
  BuiltList<Content> get contents;

  bool get progressBarVisible;

  UserProfileState._();

  factory UserProfileState([updates(UserProfileStateBuilder b)]) =
      _$UserProfileState;

  factory UserProfileState.loading() {
    return UserProfileState((b) => b
      ..contents = null
      ..progressBarVisible = true);
  }

  factory UserProfileState.success(List<Content> contents) {
    return UserProfileState((b) => b
      ..contents = contents.toBuiltList().toBuilder()
      ..progressBarVisible = false);
  }
}
