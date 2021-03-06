import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:instagram_clone/core/bloc_side_effects.dart';
import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/register_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_event.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_side_effect.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';

@injectable
class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState>
    with BlocSideEffects<LoginPageEvent, LoginPageState, LoginPageSideEffect> {
  final AuthenticateUserUseCase _authenticateUser;
  final RegisterUserUseCase _registerUser;

  LoginPageBloc(this._authenticateUser, this._registerUser)
      : super(LoginPageState.idle());

  void authenticateUser(String username, String password) {
    add(LoginPageEvent.authenticateUser(
        username: username, password: password));
  }

  void registerUser(String username, String password) {
    add(LoginPageEvent.registerUser(username: username, password: password));
  }

  @override
  Stream<LoginPageState> mapEventToState(LoginPageEvent event) {
    return event.when(
        authenticateUser: (String username, String password) =>
            _mapAuthenticateUser(username, password),
        registerUser: (String username, String password) =>
            _mapRegisterUser(username, password));
  }

  Stream<LoginPageState> _mapAuthenticateUser(
          String username, String password) =>
      Stream.fromFuture(_authenticateUser(username, password))
          .flatMap((result) => result.when(
              success: (data) {
                if (data != null) {
                  addSideEffect(LoginPageSideEffect.openMainUserPage());
                  return Stream<LoginPageState>.empty();
                } else {
                  return Stream.value(
                      LoginPageState.error(false, username, password));
                }
              },
              error: (_) => Stream.value(
                  LoginPageState.error(false, username, password))))
          .startWith(LoginPageState.loading(false, username, password));

  Stream<LoginPageState> _mapRegisterUser(String username, String password) =>
      Stream.fromFuture(_registerUser(username, password))
          .flatMap((result) => result.when(
              success: (data) {
                if (data != null) {
                  addSideEffect(LoginPageSideEffect.openMainUserPage());
                  return Stream<LoginPageState>.empty();
                } else {
                  return Stream.value(
                      LoginPageState.error(true, username, password));
                }
              },
              error: (_) =>
                  Stream.value(LoginPageState.error(true, username, password))))
          .startWith(LoginPageState.loading(true, username, password));
}
