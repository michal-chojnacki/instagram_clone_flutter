import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'content_item_state.freezed.dart';

@freezed
abstract class ContentItemState with _$ContentItemState {
  factory ContentItemState({
    @required Content content,
    @required bool liked,
  }) = _ContentItemState;

  factory ContentItemState.initial(Content content, bool liked) {
    return ContentItemState(content: content, liked: liked);
  }

  factory ContentItemState.setLikeStatus(
      ContentItemState prevState, bool newLikedStatus) {
    var newLikesCount = prevState.content.likesCount;
    if (newLikedStatus == true && prevState.liked == false) {
      newLikesCount += 1;
    } else if (newLikedStatus == false && prevState.liked == true) {
      newLikesCount -= 1;
    }
    return ContentItemState(
        liked: newLikedStatus,
        content: prevState.content.copyWith(likesCount: newLikesCount));
  }
}
