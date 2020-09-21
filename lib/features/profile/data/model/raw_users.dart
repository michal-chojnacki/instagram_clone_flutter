import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';

part 'raw_users.g.dart';

abstract class RawUsers implements Built<RawUsers, RawUsersBuilder> {
  BuiltList<RawUser> get users;
  @nullable
  int get page;
  @nullable
  int get pages;

  RawUsers._();

  factory RawUsers([updates(RawUsersBuilder b)]) = _$RawUsers;

  factory RawUsers.create({@required BuiltList<RawUser> users}) {
    return RawUsers((b) => b..users = users.toBuilder());
  }

  static Serializer<RawUsers> get serializer => _$rawUsersSerializer;
}
