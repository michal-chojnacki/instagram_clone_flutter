import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/register_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_event.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final NavigationBloc _navigationBloc;
  final AuthenticateUserUseCase _authenticateUser;
  final RegisterUserUseCase _registerUser;

  LoginPageBloc(
      this._navigationBloc, this._authenticateUser, this._registerUser)
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
        authenticateUser: (event) => _mapAuthenticateUser(event),
        registerUser: (event) => _mapRegisterUser(event));
  }

  Stream<LoginPageState> _mapAuthenticateUser(AuthenticateUser event) =>
      Stream.fromFuture(_authenticateUser(event.username, event.password))
          .flatMap((result) => result.when(
              success: (data) {
                if (data != null) {
                  _navigationBloc.openMainUserPage();
                  return Stream<LoginPageState>.empty();
                } else {
                  return Stream.value(LoginPageState.error());
                }
              },
              error: (_) => Stream.value(LoginPageState.error())))
          .startWith(LoginPageState.loading());

  Stream<LoginPageState> _mapRegisterUser(RegisterUser event) =>
      Stream.fromFuture(_registerUser(event.username, event.password))
          .flatMap((result) => result.when(
              success: (data) {
                if (data != null) {
                  _navigationBloc.openMainUserPage();
                  return Stream<LoginPageState>.empty();
                } else {
                  return Stream.value(LoginPageState.error());
                }
              },
              error: (_) => Stream.value(LoginPageState.error())))
          .startWith(LoginPageState.loading());
}
