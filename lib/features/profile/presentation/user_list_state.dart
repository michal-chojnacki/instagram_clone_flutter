import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'user_list_state.freezed.dart';

@freezed
abstract class UserListState with _$UserListState {
  factory UserListState({
    @required List<User> users,
    @required int page,
    @required bool hasReachedEndOfResults,
  }) = _UserListState;

  factory UserListState.initial() {
    return UserListState(users: [], page: 0, hasReachedEndOfResults: false);
  }

  factory UserListState.loading() {
    return UserListState(users: [], page: 0, hasReachedEndOfResults: false);
  }

  factory UserListState.success(
      List<User> users, int page, bool hasReachedEndOfResults) {
    return UserListState(
        users: users,
        page: page,
        hasReachedEndOfResults: hasReachedEndOfResults);
  }
}
