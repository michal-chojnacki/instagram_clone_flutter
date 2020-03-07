import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:super_enum/super_enum.dart';

part "user_profile_event.g.dart";

@superEnum
enum _UserProfileEvent {
  @Data(fields: [
    DataField<User>('user'),
  ])
  FetchUserContent,
  @Data(fields: [
    DataField<User>('user'),
    DataField<bool>('observe'),
  ])
  ChangeObservation,
}
