import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_side_effect.freezed.dart';

@freezed
abstract class EditProfileSideEffect with _$EditProfileSideEffect {
  factory EditProfileSideEffect.openInitPage() = OpenInitPage;
  factory EditProfileSideEffect.updatedProfile() = UpdatedProfile;
}
