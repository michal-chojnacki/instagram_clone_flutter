library main_contents_state;

import 'package:built_value/built_value.dart';

part 'send_content_state.g.dart';

abstract class SendContentState
    implements Built<SendContentState, SendContentStateBuilder> {
  bool get progressBarVisible;

  SendContentState._();

  factory SendContentState([updates(SendContentStateBuilder b)]) =
      _$SendContentState;

  factory SendContentState.loadingStarted() {
    return SendContentState((b) => b..progressBarVisible = true);
  }

  factory SendContentState.loaded() {
    return SendContentState((b) => b..progressBarVisible = false);
  }
}
