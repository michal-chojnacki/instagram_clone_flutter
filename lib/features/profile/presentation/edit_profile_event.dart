import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:super_enum/super_enum.dart';

part "edit_profile_event.g.dart";

@superEnum
enum _EditProfileEvent {
  @object
  FetchProfileData,
  @Data(fields: [
    DataField<String>('avatarPath'),
    DataField<String>('username'),
    DataField<String>('bio'),
  ])
  UpdateProfileData,
}
