import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'send_content_event.freezed.dart';

@freezed
abstract class SendContentEvent with _$SendContentEvent {
  factory SendContentEvent.sendContent(
      {@required String message, @required String imagePath}) = SendContent;
}
