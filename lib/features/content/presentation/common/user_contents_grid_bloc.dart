import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/get_user_contents_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/get_contents_for_user_use_case.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_event.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_state.dart';

@injectable
class UserContentsGridBloc
    extends Bloc<UserContentsGridEvent, UserContentsGridState> {
  final GetContentsForUserUseCase _getContentsForUser;
  final GetUserContentsUseCase _getUserContentsUseCase;

  UserContentsGridBloc(this._getContentsForUser, this._getUserContentsUseCase)
      : super(UserContentsGridState.loading());

  void fetchProfileData({@required User user, int page = 0}) {
    add(UserContentsGridEvent.fetchUserContent(user: user, page: page));
  }

  void fetchCurrentUserContent({int page = 0}) {
    add(UserContentsGridEvent.fetchCurrentUserContent(page: page));
  }

  @override
  Stream<UserContentsGridState> mapEventToState(UserContentsGridEvent event) {
    return event.when(
      fetchUserContent: (User user, int page) =>
          _mapFetchUserContent(user, page),
      fetchCurrentUserContent: (int page) => _mapFetchCurrentUserContent(page),
    );
  }

  Stream<UserContentsGridState> _mapFetchUserContent(
      User user, int page) async* {
    if (page == 0) {
      yield UserContentsGridState.loading();
    }
    yield (await _getContentsForUser(user, page)).when(
        success: (data) => UserContentsGridState.success(
            state.contents + BuiltList.of(data.list),
            data.page,
            data.page + 1 >= data.pages),
        error: (_) => state.rebuild((b) => b.hasReachedEndOfResults = true));
  }

  Stream<UserContentsGridState> _mapFetchCurrentUserContent(int page) async* {
    if (page == 0) {
      yield UserContentsGridState.loading();
    }
    yield (await _getUserContentsUseCase(page)).when(
        success: (data) => UserContentsGridState.success(
            state.contents + BuiltList.of(data.list),
            data.page,
            data.page + 1 >= data.pages),
        error: (_) => state.rebuild((b) => b.hasReachedEndOfResults = true));
  }
}
