import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/presentation/page/splash_page.dart';
import 'package:instagram_clone/features/content/presentation/main/main_bloc.dart';
import 'package:instagram_clone/injection.dart';

void main() async {
  if (!kReleaseMode) {
    await Stetho.initialize();
  }
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(environment: prod);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => GetIt.I<MainBloc>(),
        child: BlocBuilder<MainBloc, dynamic>(
          builder: (context, _) {
            return MaterialApp(
              title: 'Instagram clone',
              theme: ThemeData(
                primarySwatch: Colors.deepPurple,
              ),
              home: Scaffold(
                body: SplashPage(),
              ),
              navigatorKey: context.bloc<MainBloc>().navigatorKey,
            );
          },
        ));
  }
}
