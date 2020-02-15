import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:instagram_clone/features/authenticate/domain/authenticate_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/register_user_use_case.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_event.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';

@injectable
class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final AuthenticateUserUseCase _authenticateUser;
  final RegisterUserUseCase _registerUser;

  LoginPageBloc(this._authenticateUser, this._registerUser);

  void authenticateUser(String username, String password) {
    add(LoginPageEvent.authenticateUser(
        username: username, password: password));
  }

  void registerUser(String username, String password) {
    add(LoginPageEvent.registerUser(username: username, password: password));
  }

  @override
  LoginPageState get initialState => LoginPageState.initial();

  @override
  Stream<LoginPageState> mapEventToState(LoginPageEvent event) async* {
    if (event is AuthenticateUser) {
      yield LoginPageState.loading();
      yield (await _authenticateUser(event.username, event.password)).when(
          success: (data) => (data != null)
              ? LoginPageState.authenticated()
              : LoginPageState.error(),
          error: (_) => LoginPageState.error());
    } else if (event is RegisterUser) {
      yield LoginPageState.loading();
      yield (await _registerUser(event.username, event.password)).when(
          success: (data) => (data != null)
              ? LoginPageState.authenticated()
              : LoginPageState.error(),
          error: (_) => LoginPageState.error());
    }
  }
}
