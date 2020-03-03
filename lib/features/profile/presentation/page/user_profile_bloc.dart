import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/get_contents_for_user_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final GetContentsForUserUseCase _getContentsForUser;

  UserProfileBloc(this._getContentsForUser);

  void fetchProfileData({@required User user}) {
    add(UserProfileEvent.fetchUserContent(user: user));
  }

  @override
  UserProfileState get initialState => UserProfileState.loading();

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) async* {
    if(event is FetchUserContent) {
      yield UserProfileState.loading();
      yield (await _getContentsForUser(event.user, 0)).when(success: (result ) =>
          UserProfileState.success(result.data)
          , error: (_) => UserProfileState.success(null)
      );
    }
  }
}
