import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'raw_like_status.freezed.dart';
part 'raw_like_status.g.dart';

@freezed
abstract class RawLikeStatus with _$RawLikeStatus {
  factory RawLikeStatus({
    @nullable bool status,
    @nullable int contentId,
  }) = _RawLikeStatus;

  factory RawLikeStatus.fromJson(Map<String, dynamic> json) =>
      _$RawLikeStatusFromJson(json);
}
