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
      fetchUserContent: (event) => _mapFetchUserContent(event),
      fetchCurrentUserContent: (event) => _mapFetchCurrentUserContent(event),
    );
  }

  Stream<UserContentsGridState> _mapFetchUserContent(
      FetchUserContent event) async* {
    if (event.page == 0) {
      yield UserContentsGridState.loading();
    }
    yield (await _getContentsForUser(event.user, event.page)).when(
        success: (result) => UserContentsGridState.success(
            state.contents + BuiltList.of(result.data.list),
            result.data.page,
            result.data.page + 1 >= result.data.pages),
        error: (_) => state.rebuild((b) => b.hasReachedEndOfResults = true));
  }

  Stream<UserContentsGridState> _mapFetchCurrentUserContent(
      FetchCurrentUserContent event) async* {
    if (event.page == 0) {
      yield UserContentsGridState.loading();
    }
    yield (await _getUserContentsUseCase(event.page)).when(
        success: (result) => UserContentsGridState.success(
            state.contents + BuiltList.of(result.data.list),
            result.data.page,
            result.data.page + 1 >= result.data.pages),
        error: (_) => state.rebuild((b) => b.hasReachedEndOfResults = true));
  }
}
