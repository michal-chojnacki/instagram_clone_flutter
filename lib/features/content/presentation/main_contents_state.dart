library main_contents_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'main_contents_state.g.dart';

abstract class MainContentsState implements Built<MainContentsState, MainContentsStateBuilder> {
  BuiltList<Content> get contents;
  bool get hasReachedEndOfResults;

  MainContentsState._();

  factory MainContentsState([updates(MainContentsStateBuilder b)]) = _$MainContentsState;

  factory MainContentsState.initial() {
    return MainContentsState((b) => b
      ..contents.replace(BuiltList<Content>())
      ..hasReachedEndOfResults = false);
  }

  factory MainContentsState.success(BuiltList<Content> items, bool hasReachedEndOfResults) {
    return MainContentsState((b) => b
      ..contents.replace(items)
      ..hasReachedEndOfResults = hasReachedEndOfResults);
  }
}