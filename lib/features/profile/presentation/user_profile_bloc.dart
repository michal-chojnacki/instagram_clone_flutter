import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/change_observation_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_observation_status_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/user_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final ChangeObservationUseCase _changeObservation;
  final GetObservationStatusUseCase _getObservationStatus;
  final GetUserDataUseCase _getUserDataUseCase;

  UserProfileBloc(this._changeObservation, this._getObservationStatus,
      this._getUserDataUseCase)
      : super(UserProfileState.loading(null));

  void fetchObservation({@required User user}) {
    add(UserProfileEvent.fetchObservation(user: user));
  }

  void refreshUserData({@required User user}) {
    add(UserProfileEvent.refreshUserData(user: user));
  }

  void changeObservation({@required User user, @required bool observe}) {
    add(UserProfileEvent.changeObservation(user: user, observe: observe));
  }

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) {
    return event.when(
        changeObservation: (User user, bool observe) =>
            _mapChangeObservation(user, observe),
        fetchObservation: (User user) => _mapFetchObservation(user),
        refreshUserData: (User user) => _mapRefreshUserData(user));
  }

  Stream<UserProfileState> _mapFetchObservation(User user) async* {
    yield UserProfileState.loading(state.user);
    final observing = (await _getObservationStatus(user))
        .when(success: (data) => data, error: (_) => null);
    if (observing != null) {
      yield UserProfileState.success(state.user, observing);
    }
  }

  Stream<UserProfileState> _mapRefreshUserData(User user) async* {
    yield (await _getUserDataUseCase(userId: user.id)).when(
        success: (data) => UserProfileState.success(data, state.observing),
        error: (_) => UserProfileState.success(user, state.observing));
  }

  Stream<UserProfileState> _mapChangeObservation(
      User user, bool observe) async* {
    yield UserProfileState.loading(state.user);
    final success = (await _changeObservation(user, observe))
        .when(success: (_) => true, error: (_) => false);
    if (success) {
      yield UserProfileState.success(state.user, observe);
    }
  }
}
