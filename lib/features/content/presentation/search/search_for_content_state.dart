import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'search_for_content_state.freezed.dart';

@freezed
abstract class SearchForContentState with _$SearchForContentState {
  factory SearchForContentState({
    @required List<PersonalizedContent> contents,
    @required int page,
    @required bool hasReachedEndOfResults,
    @nullable Function onRetry,
  }) = _SearchForContentState;

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

  factory SearchForContentState.error(
      Function onRetry, List<PersonalizedContent> items, int page) {
    return SearchForContentState(
        contents: items,
        page: page,
        hasReachedEndOfResults: false,
        onRetry: onRetry);
  }
}
