import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'user_contents_grid_state.g.dart';

abstract class UserContentsGridState
    implements Built<UserContentsGridState, UserContentsGridStateBuilder> {
  BuiltList<PersonalizedContent> get contents;
  bool get progressBarVisible;

  UserContentsGridState._();

  factory UserContentsGridState([updates(UserContentsGridStateBuilder b)]) =
  _$UserContentsGridState;

  factory UserContentsGridState.loading() {
    return UserContentsGridState((b) => b
      ..contents = null
      ..progressBarVisible = true);
  }

  factory UserContentsGridState.success(List<PersonalizedContent> contents) {
    return UserContentsGridState((b) => b
      ..contents = contents.toBuiltList().toBuilder()
      ..progressBarVisible = false);
  }
}
