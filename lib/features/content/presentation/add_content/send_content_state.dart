import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'send_content_state.freezed.dart';

@freezed
abstract class SendContentState with _$SendContentState {
  factory SendContentState({
    @required bool progressBarVisible,
    @required bool error,
  }) = _SendContentState;

  factory SendContentState.loaded() {
    return SendContentState(progressBarVisible: false, error: false);
  }

  factory SendContentState.loadingStarted() {
    return SendContentState(progressBarVisible: true, error: false);
  }

  factory SendContentState.error() {
    return SendContentState(progressBarVisible: false, error: true);
  }
}
