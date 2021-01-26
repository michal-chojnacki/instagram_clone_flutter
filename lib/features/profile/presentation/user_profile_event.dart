import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'user_profile_event.freezed.dart';

@freezed
abstract class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.changeObservation(
      {@required User user, @required bool observe}) = ChangeObservation;
  const factory UserProfileEvent.fetchObservation({@required User user}) =
      FetchObservation;
  const factory UserProfileEvent.refreshUserData({@required User user}) =
      RefreshUserData;
}
