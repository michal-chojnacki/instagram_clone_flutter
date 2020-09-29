import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'init_state.freezed.dart';

@freezed
abstract class InitState with _$InitState {
  const factory InitState.idle() = Idle;
  const factory InitState.openLoginPage() = OpenLoginPage;
  const factory InitState.openContentPage() = OpenContentPage;
}
