import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/get_contents_for_user_use_case.dart';
import 'package:instagram_clone/features/profile/domain/change_observation_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_observation_status_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_state.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final GetContentsForUserUseCase _getContentsForUser;
  final ChangeObservationUseCase _changeObservation;
  final GetObservationStatusUseCase _getObservationStatus;

  UserProfileBloc(this._getContentsForUser, this._changeObservation, this._getObservationStatus);

  void fetchProfileData({@required User user}) {
    add(UserProfileEvent.fetchUserContent(user: user));
  }

  void changeObservation({@required User user, @required bool observe}) {
    add(UserProfileEvent.changeObservation(user: user, observe: observe));
  }

  @override
  UserProfileState get initialState => UserProfileState.loading();

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) async* {
    if (event is FetchUserContent) {
      yield UserProfileState.loading();
      yield await Rx.zip2(
        _getObservationStatus(event.user).asStream(),
        _getContentsForUser(event.user, 0).asStream()
      , (observationStatus, contentsForUser) {
        var observing = observationStatus.when(
            success: (result) => result.data, error: (_) => false);
        var contents = contentsForUser.when(
            success: (result) => result.data, error: (_) => null);
        return UserProfileState.success(contents, observing);
      }).single;
    } else if (event is ChangeObservation) {
      bool success = (await _changeObservation(event.user, event.observe))
          .when(success: (_) => true, error: (_) => false);
      if (success) {
        yield UserProfileState.setObservation(state, event.observe);
      }
    }
  }
}
