library main_contents_state;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'content_item_state.g.dart';

abstract class ContentItemState
    implements Built<ContentItemState, ContentItemStateBuilder> {
  Content get content;
  bool get liked;

  ContentItemState._();

  factory ContentItemState([updates(ContentItemStateBuilder b)]) =
      _$ContentItemState;

  factory ContentItemState.initial(Content content, bool liked) {
    return ContentItemState((b) => b
      ..content = content.toBuilder()
      ..liked = liked);
  }

  factory ContentItemState.setLikeStatus(
      ContentItemState prevState, bool newLikedStatus) {
    var newLikesCount = prevState.content.likesCount;
    if (newLikedStatus == true && prevState.liked == false) {
      newLikesCount += 1;
    } else if (newLikedStatus == false && prevState.liked == true) {
      newLikesCount -= 1;
    }
    return ContentItemState((b) => b
      ..liked = newLikedStatus
      ..content = prevState.content.toBuilder()
      ..content.likesCount = newLikesCount);
  }
}
