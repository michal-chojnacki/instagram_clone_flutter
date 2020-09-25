import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "content_item_event.freezed.dart";

@freezed
abstract class ContentItemEvent with _$ContentItemEvent {
  const factory ContentItemEvent.changeLikeStatus(
      {@required bool liked, @required int contentId}) = ChangeLikeStatus;
}
