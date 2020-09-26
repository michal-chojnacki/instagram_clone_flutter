import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_event.freezed.dart';

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.verifyAuthenticationState() =
      VerifyAuthenticationState;
}
