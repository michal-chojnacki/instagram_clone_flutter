import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_bloc.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';
import 'package:instagram_clone/features/authenticate/presentation/widget/login_form.dart';
import 'package:instagram_clone/features/content/presentation/page/main_user_page.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GetIt.I<LoginPageBloc>()
        ..sideEffects.listen((sideEffect) => sideEffect.when(
            openMainUserPage: () =>
                Navigator.of(context).pushReplacement(MainUserPage.route()))),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: BlocBuilder<LoginPageBloc, LoginPageState>(
          builder: (context, LoginPageState state) {
            if (state.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(48.0),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      height: 64.0,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LoginForm(
                        registerMode: state.registerMode,
                        onLogIn: (login, password) =>
                            _authenticateUser(context, login, password),
                        onRegister: (login, password) =>
                            _registerUser(context, login, password),
                      ),
                      if (state.error)
                        Text(
                          'Error',
                          style: TextStyle(color: Theme.of(context).errorColor),
                        ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<void> _authenticateUser(
      BuildContext context, String login, String password) async {
    context.bloc<LoginPageBloc>().authenticateUser(login, password);
  }

  Future<void> _registerUser(
      BuildContext context, String login, String password) async {
    context.bloc<LoginPageBloc>().registerUser(login, password);
  }
}
