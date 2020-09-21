import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'search_for_content_state.g.dart';

abstract class SearchForContentState
    implements Built<SearchForContentState, SearchForContentStateBuilder> {
  BuiltList<PersonalizedContent> get contents;
  int get page;
  bool get hasReachedEndOfResults;

  SearchForContentState._();

  factory SearchForContentState([updates(SearchForContentStateBuilder b)]) =
      _$SearchForContentState;

  factory SearchForContentState.initial() {
    return SearchForContentState((b) => b
      ..contents.replace(BuiltList<Content>())
      ..page = 0
      ..hasReachedEndOfResults = false);
  }

  factory SearchForContentState.loading() {
    return SearchForContentState((b) => b
      ..contents.replace(BuiltList<Content>())
      ..page = 0
      ..hasReachedEndOfResults = false);
  }

  factory SearchForContentState.success(BuiltList<PersonalizedContent> items,
      int page, bool hasReachedEndOfResults) {
    return SearchForContentState((b) => b
      ..contents.replace(items)
      ..page = page
      ..hasReachedEndOfResults = hasReachedEndOfResults);
  }
}
