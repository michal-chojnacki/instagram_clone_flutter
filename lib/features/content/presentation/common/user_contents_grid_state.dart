import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

part 'user_contents_grid_state.freezed.dart';

@freezed
abstract class UserContentsGridState with _$UserContentsGridState {
  factory UserContentsGridState({
    @required List<PersonalizedContent> contents,
    @required int page,
    @required bool hasReachedEndOfResults,
  }) = _UserContentsGridState;

  factory UserContentsGridState.loading() {
    return UserContentsGridState(
        contents: [], page: 0, hasReachedEndOfResults: false);
  }

  factory UserContentsGridState.success(
      List<PersonalizedContent> items, int page, bool hasReachedEndOfResults) {
    return UserContentsGridState(
        contents: items,
        page: page,
        hasReachedEndOfResults: hasReachedEndOfResults);
  }
}
