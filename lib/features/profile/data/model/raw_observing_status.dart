import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';

part 'raw_observing_status.g.dart';

abstract class RawObservingStatus
    implements Built<RawObservingStatus, RawObservingStatusBuilder> {
  bool get status;
  int get userId;

  RawObservingStatus._();

  factory RawObservingStatus([updates(RawObservingStatusBuilder b)]) =
      _$RawObservingStatus;

  factory RawObservingStatus.create(
      {@required bool status, @required int userId}) {
    return RawObservingStatus((b) => b
      ..userId = userId
      ..status = status);
  }

  static Serializer<RawObservingStatus> get serializer =>
      _$rawObservingStatusSerializer;
}
