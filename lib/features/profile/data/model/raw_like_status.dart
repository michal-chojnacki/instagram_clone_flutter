import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';

part 'raw_like_status.g.dart';

abstract class RawLikeStatus
    implements Built<RawLikeStatus, RawLikeStatusBuilder> {
  bool get status;
  int get contentId;

  RawLikeStatus._();

  factory RawLikeStatus([updates(RawLikeStatusBuilder b)]) =
  _$RawLikeStatus;

  factory RawLikeStatus.create(
      {@required bool status, @required int contentId}) {
    return RawLikeStatus((b) => b
      ..contentId = contentId
      ..status = status);
  }

  static Serializer<RawLikeStatus> get serializer =>
      _$rawLikeStatusSerializer;
}
