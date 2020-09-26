import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'edit_profile_event.freezed.dart';

@freezed
abstract class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.fetchProfileData() = FetchProfileData;
  const factory EditProfileEvent.updateProfileData({
    @required String avatarPath,
    @required String username,
    @required String fullname,
    @required String bio,
  }) = UpdateProfileData;
  const factory EditProfileEvent.logout() = Logout;
}
