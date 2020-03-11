import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:super_enum/super_enum.dart';

part "recommended_profiles_event.g.dart";

@superEnum
enum _RecommendedProfilesEvent {
  @object
  FetchRecommendedProfiles,
  @Data(fields: [
    DataField<User>('user'),
  ])
  ObserveUser,
}
