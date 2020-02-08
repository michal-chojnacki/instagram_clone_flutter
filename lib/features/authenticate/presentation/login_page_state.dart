library login_page_state;

import 'package:built_value/built_value.dart';

part 'login_page_state.g.dart';

abstract class LoginPageState
    implements Built<LoginPageState, LoginPageStateBuilder> {
  bool get loading;

  bool get authenticated;

  bool get error;

  LoginPageState._();

  factory LoginPageState([updates(LoginPageStateBuilder b)]) = _$LoginPageState;

  factory LoginPageState.initial() {
    return LoginPageState((b) => b
      ..loading = false
      ..authenticated = false
      ..error = false);
  }

  factory LoginPageState.loading() {
    return LoginPageState((b) => b
      ..loading = true
      ..authenticated = false
      ..error = false);
  }

  factory LoginPageState.authenticated() {
    return LoginPageState((b) => b
      ..loading = false
      ..authenticated = true
      ..error = false);
  }

  factory LoginPageState.error() {
    return LoginPageState((b) => b
      ..loading = false
      ..authenticated = false
      ..error = true);
  }
}
