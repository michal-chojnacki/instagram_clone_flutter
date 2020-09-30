import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_page_state.freezed.dart';

@freezed
abstract class LoginPageState with _$LoginPageState {
  factory LoginPageState({
    @required bool loading,
    @required bool error,
    @required bool registerMode,
    String initialLogin,
    String initialPassword,
    String initialConfirmPassword,
  }) = _LoginPageState;

  factory LoginPageState.idle() {
    return LoginPageState(loading: false, error: false, registerMode: false);
  }

  factory LoginPageState.loading(
      bool registerMode, String initialLogin, String initialPassword) {
    return LoginPageState(
        loading: true,
        error: false,
        registerMode: registerMode,
        initialLogin: initialLogin,
        initialPassword: initialPassword,
        initialConfirmPassword: registerMode ? initialPassword : '');
  }

  factory LoginPageState.authenticated(bool registerMode) {
    return LoginPageState(
        loading: false, error: false, registerMode: registerMode);
  }

  factory LoginPageState.error(
      bool registerMode, String initialLogin, String initialPassword) {
    return LoginPageState(
        loading: false,
        error: true,
        registerMode: registerMode,
        initialLogin: initialLogin,
        initialPassword: initialPassword,
        initialConfirmPassword: registerMode ? initialPassword : '');
  }
}
