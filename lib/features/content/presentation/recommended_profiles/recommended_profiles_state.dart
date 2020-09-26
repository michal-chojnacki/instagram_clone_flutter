import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'recommended_profiles_state.freezed.dart';

@freezed
abstract class RecommendedProfilesState with _$RecommendedProfilesState {
  factory RecommendedProfilesState({
    @required List<User> users,
    @required bool loading,
  }) = _RecommendedProfilesState;

  factory RecommendedProfilesState.initial() {
    return RecommendedProfilesState(users: [], loading: true);
  }

  factory RecommendedProfilesState.success(List<User> users) {
    return RecommendedProfilesState(users: users, loading: false);
  }
}
