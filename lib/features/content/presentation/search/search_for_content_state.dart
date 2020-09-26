import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'search_for_content_state.freezed.dart';

@freezed
abstract class SearchForContentState with _$SearchForContentState {
  factory SearchForContentState({
    @required List<PersonalizedContent> contents,
    @required int page,
    @required bool hasReachedEndOfResults,
  }) = _SearchForContentState;

  factory SearchForContentState.initial() {
    return SearchForContentState(
        contents: [], page: 0, hasReachedEndOfResults: false);
  }

  factory SearchForContentState.loading() {
    return SearchForContentState(
        contents: [], page: 0, hasReachedEndOfResults: false);
  }

  factory SearchForContentState.success(
      List<PersonalizedContent> items, int page, bool hasReachedEndOfResults) {
    return SearchForContentState(
        contents: items,
        page: page,
        hasReachedEndOfResults: hasReachedEndOfResults);
  }
}
