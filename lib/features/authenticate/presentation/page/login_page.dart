import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_bloc.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';
import 'package:instagram_clone/features/authenticate/presentation/widget/login_form.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginPageBloc = GetIt.I<LoginPageBloc>();
  final _navigationBloc = GetIt.I<NavigationBloc>();

  @override
  void dispose() {
    super.dispose();
    _loginPageBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: BlocBuilder(
        bloc: _loginPageBloc,
        builder: (context, LoginPageState state) {
          if (state.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.authenticated) {
            _navigationBloc.openMainUserPage();
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LoginForm(
                  onLogIn: (login, password) =>
                      _authenticateUser(login, password),
                  onRegister: (login, password) =>
                      _registerUser(login, password),
                ),
                if (state.error) Text("Error"),
              ],
            );
          }
        },
      ),
    );
  }

  Future<void> _authenticateUser(String login, String password) async {
    _loginPageBloc.authenticateUser(login, password);
  }

  Future<void> _registerUser(String login, String password) async {
    _loginPageBloc.registerUser(login, password);
  }
}
