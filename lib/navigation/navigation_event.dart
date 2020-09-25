import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "navigation_event.freezed.dart";

@freezed
abstract class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.popPage() = PopPage;
  const factory NavigationEvent.openMainUserPage() = OpenMainUserPage;
  const factory NavigationEvent.openLoginPage() = OpenLoginPage;
  const factory NavigationEvent.openEditUserPage({
    @required Function thenFunction,
  }) = OpenEditUserPage;
  const factory NavigationEvent.openSendContentPage({
    @required String imagePath,
  }) = OpenSendContentPage;
  const factory NavigationEvent.openPickImagePage({
    @required Function onPickedImage,
    @required double ratio,
    @required bool circleShaped,
  }) = OpenPickImagePage;
  const factory NavigationEvent.openUserProfilePage({
    @required User user,
  }) = OpenUserProfilePage;
  const factory NavigationEvent.openSingleContentPage({
    @required PersonalizedContent content,
  }) = OpenSingleContentPage;
  const factory NavigationEvent.openAdjustImagePage({
    @required bool editable,
    @required String path,
    @required Function onPickedImage,
    @required double ratio,
    @required bool circleShaped,
  }) = OpenAdjustImagePage;
  const factory NavigationEvent.openUserFollowersPage({
    @required User user,
  }) = OpenUserFollowersPage;
  const factory NavigationEvent.openUserFolloweesPage({
    @required User user,
  }) = OpenUserFolloweesPage;
}
