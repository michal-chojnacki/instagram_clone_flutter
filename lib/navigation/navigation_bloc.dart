import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/presentation/page/login_page.dart';
import 'package:instagram_clone/features/content/presentation/page/main_contents_page.dart';
import "package:instagram_clone/navigation/navigation_event.dart";

@lazySingleton
@injectable
class NavigationBloc extends Bloc<NavigationEvent, dynamic>{
  
  final navigatorKey = GlobalKey<NavigatorState>();
  
  @override
  dynamic get initialState => 0;

  void openMainContentsPage() {
    add(NavigationEvent.openMainContentPage());
  }

  @override
  Stream<dynamic> mapEventToState(NavigationEvent event) async* {
    event.when(openMainContentPage: (event) => {
      navigatorKey.currentState.pushReplacement(MaterialPageRoute(builder: (context) => MainContentsPage()))
    }, openLoginPage: (event) => {
      navigatorKey.currentState.pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()))
    });
  }
}