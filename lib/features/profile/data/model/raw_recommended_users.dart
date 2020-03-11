import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';

part 'raw_recommended_users.g.dart';

abstract class RawRecommendedUsers
    implements Built<RawRecommendedUsers, RawRecommendedUsersBuilder> {
  BuiltList<RawUser> get recommendations;

  RawRecommendedUsers._();

  factory RawRecommendedUsers([updates(RawRecommendedUsersBuilder b)]) =
      _$RawRecommendedUsers;

  factory RawRecommendedUsers.create(
      {@required BuiltList<RawUser> recommendations}) {
    return RawRecommendedUsers((b) => b
      ..recommendations = recommendations.toBuilder());
  }

  static Serializer<RawRecommendedUsers> get serializer =>
      _$rawRecommendedUsersSerializer;
}
