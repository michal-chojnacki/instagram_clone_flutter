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

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _navigationBloc = GetIt.I<NavigationBloc>();

  @override
  void dispose() {
    _navigationBloc.close();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationBloc>(
      create: (_) => _navigationBloc,
      child: MaterialApp(
        title: 'Instagram clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
        navigatorKey: _navigationBloc.navigatorKey,
      ),
    );
  }
}