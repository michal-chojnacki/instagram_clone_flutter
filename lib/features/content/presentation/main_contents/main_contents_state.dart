library main_contents_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'main_contents_state.g.dart';

abstract class MainContentsState
    implements Built<MainContentsState, MainContentsStateBuilder> {
  BuiltList<PersonalizedContent> get contents;
  int get page;
  bool get hasReachedEndOfResults;

  MainContentsState._();

  factory MainContentsState([updates(MainContentsStateBuilder b)]) =
      _$MainContentsState;

  factory MainContentsState.initial() {
    return MainContentsState((b) => b
      ..contents.replace(BuiltList<PersonalizedContent>())
      ..page = 0
      ..hasReachedEndOfResults = false);
  }

  factory MainContentsState.success(BuiltList<PersonalizedContent> items,
      int page, bool hasReachedEndOfResults) {
    return MainContentsState((b) => b
      ..contents.replace(items)
      ..page = page
      ..hasReachedEndOfResults = hasReachedEndOfResults);
  }
}
