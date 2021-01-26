import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'recommended_profiles_event.freezed.dart';

@freezed
abstract class RecommendedProfilesEvent with _$RecommendedProfilesEvent {
  const factory RecommendedProfilesEvent.fetchRecommendedProfiles() =
      FetchRecommendedProfiles;
  const factory RecommendedProfilesEvent.observeUser({@required User user}) =
      ObserveUser;
}
