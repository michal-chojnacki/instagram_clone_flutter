// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_profiles_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class RecommendedProfilesEvent extends Equatable {
  const RecommendedProfilesEvent(this._type);

  factory RecommendedProfilesEvent.fetchRecommendedProfiles() =
      FetchRecommendedProfiles;

  factory RecommendedProfilesEvent.observeUser({@required User user}) =
      ObserveUser;

  final _RecommendedProfilesEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(FetchRecommendedProfiles) fetchRecommendedProfiles,
      @required R Function(ObserveUser) observeUser}) {
    assert(() {
      if (fetchRecommendedProfiles == null || observeUser == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _RecommendedProfilesEvent.FetchRecommendedProfiles:
        return fetchRecommendedProfiles(this as FetchRecommendedProfiles);
      case _RecommendedProfilesEvent.ObserveUser:
        return observeUser(this as ObserveUser);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(FetchRecommendedProfiles)
              fetchRecommendedProfiles,
      @required
          FutureOr<R> Function(ObserveUser) observeUser}) {
    assert(() {
      if (fetchRecommendedProfiles == null || observeUser == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _RecommendedProfilesEvent.FetchRecommendedProfiles:
        return fetchRecommendedProfiles(this as FetchRecommendedProfiles);
      case _RecommendedProfilesEvent.ObserveUser:
        return observeUser(this as ObserveUser);
    }
  }

  R whenOrElse<R>(
      {R Function(FetchRecommendedProfiles) fetchRecommendedProfiles,
      R Function(ObserveUser) observeUser,
      @required R Function(RecommendedProfilesEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _RecommendedProfilesEvent.FetchRecommendedProfiles:
        if (fetchRecommendedProfiles == null) break;
        return fetchRecommendedProfiles(this as FetchRecommendedProfiles);
      case _RecommendedProfilesEvent.ObserveUser:
        if (observeUser == null) break;
        return observeUser(this as ObserveUser);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(FetchRecommendedProfiles) fetchRecommendedProfiles,
      FutureOr<R> Function(ObserveUser) observeUser,
      @required FutureOr<R> Function(RecommendedProfilesEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _RecommendedProfilesEvent.FetchRecommendedProfiles:
        if (fetchRecommendedProfiles == null) break;
        return fetchRecommendedProfiles(this as FetchRecommendedProfiles);
      case _RecommendedProfilesEvent.ObserveUser:
        if (observeUser == null) break;
        return observeUser(this as ObserveUser);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(FetchRecommendedProfiles)
          fetchRecommendedProfiles,
      FutureOr<void> Function(ObserveUser) observeUser}) {
    assert(() {
      if (fetchRecommendedProfiles == null && observeUser == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _RecommendedProfilesEvent.FetchRecommendedProfiles:
        if (fetchRecommendedProfiles == null) break;
        return fetchRecommendedProfiles(this as FetchRecommendedProfiles);
      case _RecommendedProfilesEvent.ObserveUser:
        if (observeUser == null) break;
        return observeUser(this as ObserveUser);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchRecommendedProfiles extends RecommendedProfilesEvent {
  const FetchRecommendedProfiles._()
      : super(_RecommendedProfilesEvent.FetchRecommendedProfiles);

  factory FetchRecommendedProfiles() {
    _instance ??= const FetchRecommendedProfiles._();
    return _instance;
  }

  static FetchRecommendedProfiles _instance;
}

@immutable
class ObserveUser extends RecommendedProfilesEvent {
  const ObserveUser({@required this.user})
      : super(_RecommendedProfilesEvent.ObserveUser);

  final User user;

  @override
  String toString() => 'ObserveUser(user:${this.user})';
  @override
  List get props => [user];
}
