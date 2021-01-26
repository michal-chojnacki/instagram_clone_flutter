import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_event.freezed.dart';

@freezed
abstract class UserListEvent with _$UserListEvent {
  const factory UserListEvent.fetchFollowers({
    @required int page,
    @required int userId,
  }) = FetchFollowers;

  const factory UserListEvent.fetchFollowees({
    @required int page,
    @required int userId,
  }) = FetchFollowees;
}
