import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'init_event.freezed.dart';

@freezed
abstract class InitEvent with _$InitEvent {
  const factory InitEvent.verifyAuthenticationState() =
      VerifyAuthenticationState;
}
