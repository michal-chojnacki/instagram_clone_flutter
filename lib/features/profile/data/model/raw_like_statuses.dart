import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'raw_like_statuses.freezed.dart';
part 'raw_like_statuses.g.dart';

@freezed
abstract class RawLikeStatuses with _$RawLikeStatuses {
  factory RawLikeStatuses({
    @nullable Map<int, bool> statuses,
  }) = _RawLikeStatuses;

  factory RawLikeStatuses.fromJson(Map<String, dynamic> json) =>
      _$RawLikeStatusesFromJson(json);
}
