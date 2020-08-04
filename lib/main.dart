import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/authenticate/presentation/page/login_page.dart';
import 'package:instagram_clone/injection.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

void main() async {
  if (!kReleaseMode) {
    Stetho.initialize();
  }
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(environment: mock);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GetIt.I<NavigationBloc>(),
      child: BlocBuilder<NavigationBloc, dynamic>(
        builder: (context, _) => MaterialApp(
          title: 'Instagram clone',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: LoginPage(),
          navigatorKey: context.bloc<NavigationBloc>().navigatorKey,
        ),
      ),
    );
  }
}
