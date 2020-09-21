import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'user_contents_grid_state.g.dart';

abstract class UserContentsGridState
    implements Built<UserContentsGridState, UserContentsGridStateBuilder> {
  BuiltList<PersonalizedContent> get contents;
  int get page;
  bool get hasReachedEndOfResults;

  UserContentsGridState._();

  factory UserContentsGridState([updates(UserContentsGridStateBuilder b)]) =
      _$UserContentsGridState;

  factory UserContentsGridState.loading() {
    return UserContentsGridState((b) => b
      ..contents.replace(BuiltList<PersonalizedContent>())
      ..page = 0
      ..hasReachedEndOfResults = false);
  }

  factory UserContentsGridState.success(BuiltList<PersonalizedContent> items,
      int page, bool hasReachedEndOfResults) {
    return UserContentsGridState((b) => b
      ..contents.replace(items)
      ..page = page
      ..hasReachedEndOfResults = hasReachedEndOfResults);
  }
}
