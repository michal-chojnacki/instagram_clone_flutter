import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/bloc_with_side_effects.dart';

import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/register_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_event.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_side_effect.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class LoginPageBloc extends BlocWithSideEffect<LoginPageEvent, LoginPageState,
    LoginPageSideEffect> {
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
                  return Stream.value(LoginPageState.error(false));
                }
              },
              error: (_) => Stream.value(LoginPageState.error(false))))
          .startWith(LoginPageState.loading(false));

  Stream<LoginPageState> _mapRegisterUser(String username, String password) =>
      Stream.fromFuture(_registerUser(username, password))
          .flatMap((result) => result.when(
              success: (data) {
                if (data != null) {
                  addSideEffect(LoginPageSideEffect.openMainUserPage());
                  return Stream<LoginPageState>.empty();
                } else {
                  return Stream.value(LoginPageState.error(true));
                }
              },
              error: (_) => Stream.value(LoginPageState.error(true))))
          .startWith(LoginPageState.loading(true));
}
