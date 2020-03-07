import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/get_user_contents_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/get_contents_for_user_use_case.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_event.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_state.dart';

@injectable
class UserContentsGridBloc
    extends Bloc<UserContentsGridEvent, UserContentsGridState> {
  final GetContentsForUserUseCase _getContentsForUser;
  final GetUserContentsUseCase _getUserContentsUseCase;

  UserContentsGridBloc(this._getContentsForUser, this._getUserContentsUseCase);

  void fetchProfileData({@required User user}) {
    add(UserContentsGridEvent.fetchUserContent(user: user));
  }

  void fetchCurrentUserContent() {
    add(UserContentsGridEvent.fetchCurrentUserContent());
  }

  @override
  UserContentsGridState get initialState => UserContentsGridState.loading();

  @override
  Stream<UserContentsGridState> mapEventToState(UserContentsGridEvent event) {
    return event.when(
      fetchUserContent: (event) => _mapFetchUserContent(event),
      fetchCurrentUserContent: (event) => _mapFetchCurrentUserContent(event),
    );
  }

  Stream<UserContentsGridState> _mapFetchUserContent(
      FetchUserContent event) async* {
    yield UserContentsGridState.loading();
    yield (await _getContentsForUser(event.user, 0)).when(
        success: (result) => UserContentsGridState.success(result.data),
        error: (_) => UserContentsGridState.success(<Content>[]));
  }

  Stream<UserContentsGridState> _mapFetchCurrentUserContent(
      FetchCurrentUserContent event) async* {
    yield UserContentsGridState.loading();
    yield (await _getUserContentsUseCase(0)).when(
        success: (result) => UserContentsGridState.success(result.data),
        error: (_) => UserContentsGridState.success(<Content>[]));
  }
}
