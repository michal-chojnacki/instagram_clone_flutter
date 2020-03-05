import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'search_for_content_state.g.dart';

abstract class SearchForContentState implements Built<SearchForContentState, SearchForContentStateBuilder> {
  BuiltList<Content> get contents;
  bool get progressbarVisible;

  SearchForContentState._();

  factory SearchForContentState([updates(SearchForContentStateBuilder b)]) = _$SearchForContentState;

  factory SearchForContentState.initial() {
    return SearchForContentState((b) => b
      ..contents.replace(BuiltList<Content>())
      ..progressbarVisible = false);
  }

  factory SearchForContentState.loading() {
    return SearchForContentState((b) => b
      ..contents.replace(BuiltList<Content>())
      ..progressbarVisible = true);
  }

  factory SearchForContentState.success(BuiltList<Content> items) {
    return SearchForContentState((b) => b
      ..contents.replace(items)
      ..progressbarVisible = false);
  }
}