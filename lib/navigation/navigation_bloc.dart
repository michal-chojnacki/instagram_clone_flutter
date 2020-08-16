import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/presentation/page/login_page.dart';
import 'package:instagram_clone/features/camera/adjust_image_page.dart';
import 'package:instagram_clone/features/camera/pick_image_page.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_page.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/common/page/main_user_page.dart';
import 'package:instagram_clone/features/content/presentation/single_content/single_content_page.dart';
import 'package:instagram_clone/features/profile/presentation/page/edit_profile_page.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_page.dart';
import "package:instagram_clone/navigation/navigation_event.dart";

@lazySingleton
class NavigationBloc extends Bloc<NavigationEvent, dynamic> {
  final navigatorKey = GlobalKey<NavigatorState>();

  NavigationBloc() : super(0);

  void openLoginPage() {
    add(NavigationEvent.openLoginPage());
  }

  void openMainUserPage() {
    add(NavigationEvent.openMainUserPage());
  }

  void openSendContentScreen(String imagePath) {
    add(NavigationEvent.openSendContentPage(imagePath: imagePath));
  }

  void openEditProfilePage() {
    add(NavigationEvent.openEditUserPage());
  }

  void openPickImagePage(
      {@required Function onImagePicked,
      @required bool circleShaped,
      @required double ratio}) {
    add(NavigationEvent.openPickImagePage(
        onPickedImage: onImagePicked,
        ratio: ratio,
        circleShaped: circleShaped));
  }

  void openUserProfilePage({@required User user}) {
    add(NavigationEvent.openUserProfilePage(user: user));
  }

  void openSingleContentPage({@required PersonalizedContent content}) {
    add(NavigationEvent.openSingleContentPage(content: content));
  }

  void openAdjustImagePage(
      {@required String imagePath,
      @required double ratio,
      @required bool editable,
      @required bool circleShaped,
      @required Function onImagePicked}) {
    add(NavigationEvent.openAdjustImagePage(
        path: imagePath,
        ratio: ratio,
        editable: editable,
        onPickedImage: onImagePicked,
        circleShaped: circleShaped));
  }

  void pop() {
    add(NavigationEvent.popPage());
  }

  @override
  Stream<dynamic> mapEventToState(NavigationEvent event) async* {
    event.when(
        openMainUserPage: (event) => {
              navigatorKey.currentState.pushReplacement(
                  MaterialPageRoute(builder: (context) => MainUserPage()))
            },
        openLoginPage: (event) => {
              navigatorKey.currentState.pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()))
            },
        openSendContentPage: (event) => {
              navigatorKey.currentState.pushReplacement(MaterialPageRoute(
                  builder: (context) =>
                      SendContentPage(imagePath: event.imagePath)))
            },
        openEditUserPage: (event) => {
              navigatorKey.currentState.push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()))
            },
        openPickImagePage: (event) => {
              navigatorKey.currentState.push(MaterialPageRoute(
                  builder: (context) => PickImagePage(
                      circleShaped: event.circleShaped,
                      ratio: event.ratio,
                      onImagePicked: (String imagePath, bool editable) =>
                          openAdjustImagePage(
                              editable: editable,
                              imagePath: imagePath,
                              ratio: event.ratio,
                              circleShaped: event.circleShaped,
                              onImagePicked: event.onPickedImage))))
            },
        openUserProfilePage: (event) => {
              navigatorKey.currentState.push(MaterialPageRoute(
                  builder: (context) => UserProfilePage(event.user)))
            },
        openSingleContentPage: (event) => {
              navigatorKey.currentState.push(MaterialPageRoute(
                  builder: (context) => SingleContentPage(
                        content: event.content,
                      )))
            },
        openAdjustImagePage: (event) => {
              navigatorKey.currentState.pushReplacement(MaterialPageRoute(
                  builder: (context) => AdjustImagePage(
                      editable: event.editable,
                      ratio: event.ratio,
                      circleShaped: event.circleShaped,
                      image: File(event.path),
                      onImagePicked: (String imagePath) =>
                          event.onPickedImage(imagePath))))
            },
        popPage: (event) => {navigatorKey.currentState.pop()});
  }
}
