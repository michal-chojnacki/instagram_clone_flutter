import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import 'package:instagram_clone/core/view_model_hooks.dart';
import 'package:instagram_clone/features/authenticate/presentation/login_view_model.dart';
import 'package:instagram_clone/features/authenticate/presentation/widget/login_form.dart';
import 'package:instagram_clone/features/content/presentation/page/main_user_page.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  final viewModel = GetIt.I<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: HookBuilder(
        builder: (context) {
          final state = useViewModel(() => viewModel);
          useViewModelSideEffects(
              () => viewModel,
              (sideEffect) => sideEffect.when(
                  openMainUserPage: () => Navigator.of(context)
                      .pushReplacement(MainUserPage.route())));
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
                      onLogIn: (login, password) async {
                        await viewModel.authenticateUser(
                            username: login, password: password);
                      },
                      onRegister: (login, password) async {
                        await viewModel.registerUser(
                            username: login, password: password);
                      },
                      initialLogin: state.initialLogin,
                      initialPassword: state.initialPassword,
                      initialConfirmPassword: state.initialConfirmPassword,
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
    );
  }
}
