import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profiles_event.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profiles_state.dart';
import 'package:instagram_clone/features/profile/domain/change_observation_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_recommended_profiles_use_case.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@injectable
class RecommendedProfilesBloc
    extends Bloc<RecommendedProfilesEvent, RecommendedProfilesState> {
  final NavigationBloc _navigationBloc;
  final GetRecommendedProfilesUseCase _getRecommendedProfiles;
  final ChangeObservationUseCase _changeObservation;

  RecommendedProfilesBloc(this._navigationBloc, this._getRecommendedProfiles,
      this._changeObservation)
      : super(RecommendedProfilesState.initial());

  void getRecommendedProfiles() {
    add(RecommendedProfilesEvent.fetchRecommendedProfiles());
  }

  void observeUser({@required User user}) {
    add(RecommendedProfilesEvent.observeUser(user: user));
  }

  void openUserProfilePage({@required User user}) {
    _navigationBloc.openUserProfilePage(user: user);
  }

  @override
  Stream<RecommendedProfilesState> mapEventToState(
      RecommendedProfilesEvent event) {
    return event.when(
        fetchRecommendedProfiles: (event) =>
            _mapFetchRecommendedProfiles(event),
        observeUser: (event) => _mapObserveUser(event));
  }

  Stream<RecommendedProfilesState> _mapFetchRecommendedProfiles(
      FetchRecommendedProfiles event) async* {
    yield (await _getRecommendedProfiles()).when(
        success: (result) => RecommendedProfilesState.success(
              BuiltList.of(result.data),
            ),
        error: (result) => state.rebuild((b) => b..loading = false));
  }

  Stream<RecommendedProfilesState> _mapObserveUser(ObserveUser event) async* {
    var observeResult = await _changeObservation(event.user, true);
    if (observeResult is Success) {
      yield state.rebuild((b) => b..users = (b.users..remove(event.user)));
    }
  }
}
