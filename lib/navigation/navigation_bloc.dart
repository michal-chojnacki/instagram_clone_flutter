import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/presentation/page/login_page.dart';
import 'package:instagram_clone/features/common/page/main_user_page.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_widget.dart';
import "package:instagram_clone/navigation/navigation_event.dart";

@lazySingleton
@injectable
class NavigationBloc extends Bloc<NavigationEvent, dynamic>{
  
  final navigatorKey = GlobalKey<NavigatorState>();
  
  @override
  dynamic get initialState => 0;

  void openMainUserPage() {
    add(NavigationEvent.openMainUserPage());
  }

  void openSendContentScreen(String imagePath) {
    add(NavigationEvent.openSendContentPage(imagePath: imagePath));
  }

  @override
  Stream<dynamic> mapEventToState(NavigationEvent event) async* {
    event.when(openMainUserPage: (event) => {
      navigatorKey.currentState.pushReplacement(MaterialPageRoute(builder: (context) => MainUserPage()))
    }, openLoginPage: (event) => {
      navigatorKey.currentState.pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()))
    }, openSendContentPage: (event)  => {
      navigatorKey.currentState.push(MaterialPageRoute(builder: (context) => SendContentScreen(imagePath: event.imagePath)))
    });
  }
}