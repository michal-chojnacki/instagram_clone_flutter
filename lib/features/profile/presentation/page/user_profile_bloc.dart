import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/change_observation_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_observation_status_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final ChangeObservationUseCase _changeObservation;
  final GetObservationStatusUseCase _getObservationStatus;

  UserProfileBloc(this._changeObservation, this._getObservationStatus)
      : super(UserProfileState.loading());

  void fetchObservation({@required User user}) {
    add(UserProfileEvent.fetchObservation(user: user));
  }

  void changeObservation({@required User user, @required bool observe}) {
    add(UserProfileEvent.changeObservation(user: user, observe: observe));
  }

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) {
    return event.when(
        changeObservation: (User user, bool observe) =>
            _mapChangeObservation(user, observe),
        fetchObservation: (User user) => _mapFetchObservation(user));
  }

  Stream<UserProfileState> _mapFetchObservation(User user) async* {
    yield UserProfileState.loading();
    bool observing = (await _getObservationStatus(user))
        .when(success: (result) => result.data, error: (_) => null);
    if (observing != null) {
      yield UserProfileState.setObservation(observing);
    }
  }

  Stream<UserProfileState> _mapChangeObservation(
      User user, bool observe) async* {
    yield UserProfileState.loading();
    bool success = (await _changeObservation(user, observe))
        .when(success: (_) => true, error: (_) => false);
    if (success) {
      yield UserProfileState.setObservation(observe);
    }
  }
}
