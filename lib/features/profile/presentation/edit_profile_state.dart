import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'edit_profile_state.g.dart';

abstract class EditProfileState
    implements Built<EditProfileState, EditProfileStateBuilder> {
  @nullable
  User get user;

  bool get progressBarVisible;

  EditProfileState._();

  factory EditProfileState([updates(EditProfileStateBuilder b)]) =
      _$EditProfileState;

  factory EditProfileState.loading() {
    return EditProfileState((b) => b
      ..user = null
      ..progressBarVisible = true);
  }

  factory EditProfileState.success(User user) {
    return EditProfileState((b) => b
      ..user = user.toBuilder()
      ..progressBarVisible = false);
  }
}
