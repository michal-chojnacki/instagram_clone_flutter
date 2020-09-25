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
import 'package:instagram_clone/features/profile/presentation/user_list/user_list_page.dart';
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

  void openEditProfilePage(Function thenFunction) {
    add(NavigationEvent.openEditUserPage(thenFunction: thenFunction));
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

  void openUserFollowersPage({@required User user}) {
    add(NavigationEvent.openUserFollowersPage(user: user));
  }

  void openUserFolloweesPage({@required User user}) {
    add(NavigationEvent.openUserFolloweesPage(user: user));
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
        openMainUserPage: () => {
              navigatorKey.currentState.pushReplacement(
                  MaterialPageRoute(builder: (context) => MainUserPage()))
            },
        openLoginPage: () => {
              navigatorKey.currentState.pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()))
            },
        openSendContentPage: (String imagePath) => {
              navigatorKey.currentState.pushReplacement(MaterialPageRoute(
                  builder: (context) => SendContentPage(imagePath: imagePath)))
            },
        openEditUserPage: (Function thenFunction) => {
              navigatorKey.currentState
                  .push(MaterialPageRoute(
                      builder: (context) => EditProfilePage()))
                  .then((_) => thenFunction.call())
            },
        openPickImagePage:
            (Function onPickedImage, double ratio, bool circleShaped) => {
                  navigatorKey.currentState.push(MaterialPageRoute(
                      builder: (context) => PickImagePage(
                          circleShaped: circleShaped,
                          ratio: ratio,
                          onImagePicked: (String imagePath, bool editable) =>
                              openAdjustImagePage(
                                  editable: editable,
                                  imagePath: imagePath,
                                  ratio: ratio,
                                  circleShaped: circleShaped,
                                  onImagePicked: onPickedImage))))
                },
        openUserProfilePage: (User user) => {
              navigatorKey.currentState.push(MaterialPageRoute(
                  builder: (context) => UserProfilePage(user)))
            },
        openSingleContentPage: (
          PersonalizedContent content,
        ) =>
            {
              navigatorKey.currentState.push(MaterialPageRoute(
                  builder: (context) => SingleContentPage(
                        content: content,
                      )))
            },
        openUserFolloweesPage: (User user) => {
              navigatorKey.currentState.push(MaterialPageRoute(
                  builder: (context) =>
                      UserListPage(UserListPageMode.FOLLOWEES, user)))
            },
        openUserFollowersPage: (User user) => {
              navigatorKey.currentState.push(MaterialPageRoute(
                  builder: (context) =>
                      UserListPage(UserListPageMode.FOLLOWERS, user)))
            },
        openAdjustImagePage: (bool editable, String path,
                Function onPickedImage, double ratio, bool circleShaped) =>
            {
              navigatorKey.currentState.pushReplacement(MaterialPageRoute(
                  builder: (context) => AdjustImagePage(
                      editable: editable,
                      ratio: ratio,
                      circleShaped: circleShaped,
                      image: File(path),
                      onImagePicked: (String imagePath) =>
                          onPickedImage(imagePath))))
            },
        popPage: () => {navigatorKey.currentState.pop()});
  }
}
