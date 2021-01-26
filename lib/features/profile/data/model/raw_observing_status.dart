import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_observing_status.freezed.dart';
part 'raw_observing_status.g.dart';

@freezed
abstract class RawObservingStatus with _$RawObservingStatus {
  factory RawObservingStatus({
    @nullable bool status,
    @nullable int userId,
  }) = _RawObservingStatus;

  factory RawObservingStatus.fromJson(Map<String, dynamic> json) =>
      _$RawObservingStatusFromJson(json);
}
