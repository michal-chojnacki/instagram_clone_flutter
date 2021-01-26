import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:instagram_clone/features/profile/domain/get_all_followees_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_all_followers_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/user_list_event.dart';
import 'package:instagram_clone/features/profile/presentation/user_list_state.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final GetAllFollowersUseCase _getAllFollowersUseCase;
  final GetAllFolloweesUseCase _getAllFolloweesUseCase;

  UserListBloc(this._getAllFollowersUseCase, this._getAllFolloweesUseCase)
      : super(UserListState.initial());

  void loadFollowers({int userId, page = 0}) {
    add(UserListEvent.fetchFollowers(page: page, userId: userId));
  }

  void loadFollowees({int userId, page = 0}) {
    add(UserListEvent.fetchFollowees(page: page, userId: userId));
  }

  @override
  Stream<UserListState> mapEventToState(UserListEvent event) {
    return event.when(
        fetchFollowers: (int page, int userId) =>
            _mapFetchFollowers(page, userId),
        fetchFollowees: (int page, int userId) =>
            mapFetchFollowees(page, userId));
  }

  Stream<UserListState> _mapFetchFollowers(int page, int userId) async* {
    if (page == 0) {
      yield UserListState.loading();
    }
    yield (await _getAllFollowersUseCase(userId, page)).when(success: (data) {
      return UserListState.success(state.users + data.list.toList(), data.page,
          data.page + 1 >= data.pages);
    }, error: (result) {
      return state.copyWith(hasReachedEndOfResults: true);
    });
  }

  Stream<UserListState> mapFetchFollowees(int page, int userId) async* {
    if (page == 0) {
      yield UserListState.loading();
    }
    yield (await _getAllFolloweesUseCase(userId, page)).when(success: (data) {
      return UserListState.success(state.users + data.list.toList(), data.page,
          data.page + 1 >= data.pages);
    }, error: (result) {
      return state.copyWith(hasReachedEndOfResults: true);
    });
  }
}
