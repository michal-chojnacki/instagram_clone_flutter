import 'dart:async';

import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/view_model.dart';
import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/register_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_side_effect.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';

@injectable
class LoginViewModel extends ViewModel<LoginPageState>
    with ViewModelSideEffects<LoginPageState, LoginPageSideEffect> {
  final AuthenticateUserUseCase _authenticateUser;
  final RegisterUserUseCase _registerUser;

  LoginViewModel(this._authenticateUser, this._registerUser)
      : super(LoginPageState.idle());

  Future<void> authenticateUser(
      {@required String username, @required String password}) async {
    value = LoginPageState.loading(false, username, password);
    (await _authenticateUser(username, password)).when(
        success: (data) {
          if (data != null) {
            addSideEffect(LoginPageSideEffect.openMainUserPage());
          } else {
            value = LoginPageState.error(false, username, password);
          }
        },
        error: (_) => value = LoginPageState.error(false, username, password));
  }

  Future<void> registerUser(
      {@required String username, @required String password}) async {
    value = LoginPageState.loading(false, username, password);
    (await _registerUser(username, password)).when(
        success: (data) {
          if (data != null) {
            addSideEffect(LoginPageSideEffect.openMainUserPage());
          } else {
            value = LoginPageState.error(true, username, password);
          }
        },
        error: (_) => value = LoginPageState.error(true, username, password));
  }
}
