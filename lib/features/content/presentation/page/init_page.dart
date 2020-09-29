import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/authenticate/presentation/page/login_page.dart';
import 'package:instagram_clone/features/authenticate/presentation/page/splash_page.dart';
import 'package:instagram_clone/features/content/presentation/page/main_user_page.dart';
import 'package:instagram_clone/features/content/presentation/init/init_bloc.dart';
import 'package:instagram_clone/features/content/presentation/init/init_state.dart';

class InitPage extends StatelessWidget {
  static Route route({@required InitPageMode mode}) {
    return MaterialPageRoute<void>(builder: (_) => InitPage(mode));
  }

  final InitPageMode _mode;

  InitPage(this._mode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<InitBloc, InitState>(
          cubit: GetIt.I<InitBloc>(),
          listener: (context, state) {
            state.when(
              idle: () => Void,
              openLoginPage: () =>
                  Navigator.of(context).pushReplacement(LoginPage.route()),
              openContentPage: () =>
                  Navigator.of(context).pushReplacement(MainUserPage.route()),
            );
          },
          child: _childWidget(_mode)),
    );
  }

  Widget _childWidget(InitPageMode mode) {
    if (mode == InitPageMode.SPLASH) {
      return SplashPage();
    } else {
      return Center(child: CircularProgressIndicator());
    }
  }
}

enum InitPageMode { SPLASH, PROGRESS_INDICTATOR }
