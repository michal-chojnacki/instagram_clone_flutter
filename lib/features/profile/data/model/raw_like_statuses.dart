import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raw_like_statuses.g.dart';

abstract class RawLikeStatuses
    implements Built<RawLikeStatuses, RawLikeStatusesBuilder> {
  BuiltMap<int, bool> get statuses;

  RawLikeStatuses._();

  factory RawLikeStatuses([updates(RawLikeStatusesBuilder b)]) =_$RawLikeStatuses;

  static Serializer<RawLikeStatuses> get serializer =>
      _$rawLikeStatusesSerializer;
}
