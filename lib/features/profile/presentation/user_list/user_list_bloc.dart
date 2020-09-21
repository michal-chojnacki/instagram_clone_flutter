import 'package:built_collection/built_collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/profile/domain/get_all_followees_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_all_followers_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/user_list/user_list_event.dart';
import 'package:instagram_clone/features/profile/presentation/user_list/user_list_state.dart';

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
        fetchFollowers: (event) => _mapFetchFollowers(event),
        fetchFollowees: (event) => mapFetchFollowees(event));
  }

  Stream<UserListState> _mapFetchFollowers(FetchFollowers event) async* {
    if (event.page == 0) {
      yield UserListState.loading();
    }
    yield (await _getAllFollowersUseCase(event.userId, event.page)).when(
        success: (result) {
      return UserListState.success(state.users + BuiltList.of(result.data.list),
          result.data.page, result.data.page + 1 >= result.data.pages);
    }, error: (result) {
      return state.rebuild((b) => b.hasReachedEndOfResults = true);
    });
  }

  Stream<UserListState> mapFetchFollowees(FetchFollowees event) async* {
    if (event.page == 0) {
      yield UserListState.loading();
    }
    yield (await _getAllFolloweesUseCase(event.userId, event.page)).when(
        success: (result) {
      return UserListState.success(state.users + BuiltList.of(result.data.list),
          result.data.page, result.data.page + 1 >= result.data.pages);
    }, error: (result) {
      return state.rebuild((b) => b.hasReachedEndOfResults = true);
    });
  }
}
