library main_contents_state;

import 'package:built_value/built_value.dart';

part 'send_content_state.g.dart';

abstract class SendContentState
    implements Built<SendContentState, SendContentStateBuilder> {
  bool get progressBarVisible;
  bool get sent;
  bool get error;

  SendContentState._();

  factory SendContentState([updates(SendContentStateBuilder b)]) =
      _$SendContentState;

  factory SendContentState.loaded() {
    return SendContentState((b) => b
      ..progressBarVisible = false
      ..sent = false
      ..error = false);
  }

  factory SendContentState.loadingStarted() {
    return SendContentState((b) => b
      ..progressBarVisible = true
      ..sent = false
      ..error = false);
  }

  factory SendContentState.sent() {
    return SendContentState((b) => b
      ..progressBarVisible = false
      ..sent = true
      ..error = false);
  }

  factory SendContentState.error() {
    return SendContentState((b) => b
      ..progressBarVisible = false
      ..sent = false
      ..error = true);
  }
}
