import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_content_event.freezed.dart';

@freezed
abstract class SendContentEvent with _$SendContentEvent {
  factory SendContentEvent.sendContent(
      {@required String message, @required String imagePath}) = SendContent;
}
