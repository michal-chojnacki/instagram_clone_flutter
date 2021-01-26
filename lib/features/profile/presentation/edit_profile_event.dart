import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_event.freezed.dart';

@freezed
abstract class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.fetchProfileData() = FetchProfileData;
  const factory EditProfileEvent.updateProfileData({
    @nullable String avatarPath,
    @nullable String username,
    @nullable String fullname,
    @nullable String bio,
  }) = UpdateProfileData;
  const factory EditProfileEvent.logout() = Logout;
}
