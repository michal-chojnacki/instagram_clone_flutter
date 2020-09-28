import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'send_content_side_effect.freezed.dart';

@freezed
abstract class SendContentSideEffect with _$SendContentSideEffect {
  factory SendContentSideEffect.openMainUserPage() = OpenMainUserPage;
}
