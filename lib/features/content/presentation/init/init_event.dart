import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_event.freezed.dart';

@freezed
abstract class InitEvent with _$InitEvent {
  const factory InitEvent.verifyAuthenticationState() =
      VerifyAuthenticationState;
}
