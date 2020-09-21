import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'user_list_state.g.dart';

abstract class UserListState
    implements Built<UserListState, UserListStateBuilder> {
  BuiltList<User> get users;
  int get page;
  bool get hasReachedEndOfResults;

  UserListState._();

  factory UserListState([updates(UserListStateBuilder b)]) = _$UserListState;

  factory UserListState.initial() {
    return UserListState((b) => b
      ..users.replace(BuiltList<User>())
      ..page = 0
      ..hasReachedEndOfResults = false);
  }

  factory UserListState.loading() {
    return UserListState((b) => b
      ..users.replace(BuiltList<User>())
      ..page = 0
      ..hasReachedEndOfResults = false);
  }

  factory UserListState.success(
      BuiltList<User> users, int page, bool hasReachedEndOfResults) {
    return UserListState((b) => b
      ..users.replace(users)
      ..page = page
      ..hasReachedEndOfResults = hasReachedEndOfResults);
  }
}
