import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'main_contents_state.freezed.dart';

@freezed
abstract class MainContentsState with _$MainContentsState {
  factory MainContentsState({
    @required List<PersonalizedContent> contents,
    @required int page,
    @required bool hasReachedEndOfResults,
    @nullable Function onRetry,
  }) = _MainContentsState;

  factory MainContentsState.initial() {
    return MainContentsState(
        contents: [], page: 0, hasReachedEndOfResults: false);
  }

  factory MainContentsState.success(
      List<PersonalizedContent> items, int page, bool hasReachedEndOfResults) {
    return MainContentsState(
        contents: items,
        page: page,
        hasReachedEndOfResults: hasReachedEndOfResults);
  }

  factory MainContentsState.error(
      Function onRetry, List<PersonalizedContent> items, int page) {
    return MainContentsState(
        contents: items,
        page: page,
        hasReachedEndOfResults: false,
        onRetry: onRetry);
  }
}
