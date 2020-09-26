import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';

part 'raw_users.freezed.dart';
part 'raw_users.g.dart';

@freezed
abstract class RawUsers with _$RawUsers {
  factory RawUsers({
    @nullable List<RawUser> users,
    @nullable int page,
    @nullable int pages,
  }) = _RawUsers;

  factory RawUsers.fromJson(Map<String, dynamic> json) =>
      _$RawUsersFromJson(json);
}
