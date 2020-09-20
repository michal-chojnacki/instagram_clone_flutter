import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_bloc.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_page_state.dart';
import 'package:instagram_clone/features/authenticate/presentation/widget/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GetIt.I<LoginPageBloc>(),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: BlocBuilder<LoginPageBloc, LoginPageState>(
          builder: (context, LoginPageState state) {
            if (state.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LoginForm(
                    onLogIn: (login, password) =>
                        _authenticateUser(context, login, password),
                    onRegister: (login, password) =>
                        _registerUser(context, login, password),
                  ),
                  if (state.error)
                    Text(
                      "Error",
                      style: TextStyle(color: Theme.of(context).errorColor),
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
