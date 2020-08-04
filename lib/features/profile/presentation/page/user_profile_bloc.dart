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
        fetchObservation: (event) => _mapFetchObservation(event),
        changeObservation: (event) => _mapChangeObservation(event));
  }

  Stream<UserProfileState> _mapFetchObservation(FetchObservation event) async* {
    yield UserProfileState.loading();
    bool observing = (await _getObservationStatus(event.user))
        .when(success: (result) => result.data, error: (_) => null);
    if (observing != null) {
      yield UserProfileState.setObservation(observing);
    }
  }

  Stream<UserProfileState> _mapChangeObservation(
      ChangeObservation event) async* {
    yield UserProfileState.loading();
    bool success = (await _changeObservation(event.user, event.observe))
        .when(success: (_) => true, error: (_) => false);
    if (success) {
      yield UserProfileState.setObservation(event.observe);
    }
  }
}
