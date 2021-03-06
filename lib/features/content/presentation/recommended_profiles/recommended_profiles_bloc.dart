import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profiles_event.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profiles_state.dart';
import 'package:instagram_clone/features/profile/domain/change_observation_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_recommended_profiles_use_case.dart';

@injectable
class RecommendedProfilesBloc
    extends Bloc<RecommendedProfilesEvent, RecommendedProfilesState> {
  final GetRecommendedProfilesUseCase _getRecommendedProfiles;
  final ChangeObservationUseCase _changeObservation;

  RecommendedProfilesBloc(this._getRecommendedProfiles, this._changeObservation)
      : super(RecommendedProfilesState.initial());

  void getRecommendedProfiles() {
    add(RecommendedProfilesEvent.fetchRecommendedProfiles());
  }

  void observeUser({@required User user}) {
    add(RecommendedProfilesEvent.observeUser(user: user));
  }

  @override
  Stream<RecommendedProfilesState> mapEventToState(
      RecommendedProfilesEvent event) {
    return event.when(
        fetchRecommendedProfiles: () => _mapFetchRecommendedProfiles(),
        observeUser: (User user) => _mapObserveUser(user));
  }

  Stream<RecommendedProfilesState> _mapFetchRecommendedProfiles() async* {
    yield (await _getRecommendedProfiles()).when(
        success: (data) => RecommendedProfilesState.success(data),
        error: (_) => RecommendedProfilesState.error(getRecommendedProfiles));
  }

  Stream<RecommendedProfilesState> _mapObserveUser(User user) async* {
    final observeResult = await _changeObservation(user, true);
    if (observeResult is Success) {
      yield state.copyWith(
          users: state.users.toList()
            ..removeWhere((element) => element.id == user.id));
    }
  }
}
