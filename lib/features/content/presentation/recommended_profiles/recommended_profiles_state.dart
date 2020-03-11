import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'recommended_profiles_state.g.dart';

abstract class RecommendedProfilesState implements Built<RecommendedProfilesState, RecommendedProfilesStateBuilder> {
  BuiltList<User> get users;
  bool get loading;

  RecommendedProfilesState._();

  factory RecommendedProfilesState([updates(RecommendedProfilesStateBuilder b)]) = _$RecommendedProfilesState;

  factory RecommendedProfilesState.initial() {
    return RecommendedProfilesState((b) => b
      ..users.replace(BuiltList<User>())
      ..loading = true);
  }

  factory RecommendedProfilesState.success(BuiltList<User> users) {
    return RecommendedProfilesState((b) => b
      ..users.replace(users)
      ..loading = false);
  }
}