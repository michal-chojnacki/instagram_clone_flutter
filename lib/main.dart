import 'package:flutter/material.dart';
// import 'package:flutter_stetho/flutter_stetho.dart';
// import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/presentation/page/init_page.dart';
import 'package:instagram_clone/injection.dart';

void main() async {
  //  Temporary removed. Waiting for adding support for flutter 1.22.0 in this lib.
  //  More here: https://github.com/brianegan/flutter_stetho/issues/42
  // if (!kReleaseMode) {
  //   await Stetho.initialize();
  // }
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(environment: prod);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram clone',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: InitPage(InitPageMode.SPLASH));
  }
}
