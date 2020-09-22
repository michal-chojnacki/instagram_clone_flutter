library login_page_state;

import 'package:built_value/built_value.dart';

part 'login_page_state.g.dart';

abstract class LoginPageState
    implements Built<LoginPageState, LoginPageStateBuilder> {
  bool get loading;

  bool get error;

  bool get registerMode;

  LoginPageState._();

  factory LoginPageState([updates(LoginPageStateBuilder b)]) = _$LoginPageState;

  factory LoginPageState.idle() {
    return LoginPageState((b) => b
      ..loading = false
      ..error = false
      ..registerMode = false);
  }

  factory LoginPageState.loading(bool registerMode) {
    return LoginPageState((b) => b
      ..loading = true
      ..error = false
      ..registerMode = registerMode);
  }

  factory LoginPageState.authenticated(bool registerMode) {
    return LoginPageState((b) => b
      ..loading = false
      ..error = false
      ..registerMode = registerMode);
  }

  factory LoginPageState.error(bool registerMode) {
    return LoginPageState((b) => b
      ..loading = false
      ..error = true
      ..registerMode = registerMode);
  }
}
