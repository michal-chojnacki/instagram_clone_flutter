// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class UserProfileEvent extends Equatable {
  const UserProfileEvent(this._type);

  factory UserProfileEvent.changeObservation(
      {@required User user, @required bool observe}) = ChangeObservation;

  factory UserProfileEvent.fetchObservation({@required User user}) =
      FetchObservation;

  final _UserProfileEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(ChangeObservation) changeObservation,
      @required R Function(FetchObservation) fetchObservation}) {
    assert(() {
      if (changeObservation == null || fetchObservation == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.ChangeObservation:
        return changeObservation(this as ChangeObservation);
      case _UserProfileEvent.FetchObservation:
        return fetchObservation(this as FetchObservation);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(ChangeObservation) changeObservation,
      @required FutureOr<R> Function(FetchObservation) fetchObservation}) {
    assert(() {
      if (changeObservation == null || fetchObservation == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.ChangeObservation:
        return changeObservation(this as ChangeObservation);
      case _UserProfileEvent.FetchObservation:
        return fetchObservation(this as FetchObservation);
    }
  }

  R whenOrElse<R>(
      {R Function(ChangeObservation) changeObservation,
      R Function(FetchObservation) fetchObservation,
      @required R Function(UserProfileEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.ChangeObservation:
        if (changeObservation == null) break;
        return changeObservation(this as ChangeObservation);
      case _UserProfileEvent.FetchObservation:
        if (fetchObservation == null) break;
        return fetchObservation(this as FetchObservation);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(ChangeObservation) changeObservation,
      FutureOr<R> Function(FetchObservation) fetchObservation,
      @required FutureOr<R> Function(UserProfileEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.ChangeObservation:
        if (changeObservation == null) break;
        return changeObservation(this as ChangeObservation);
      case _UserProfileEvent.FetchObservation:
        if (fetchObservation == null) break;
        return fetchObservation(this as FetchObservation);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(ChangeObservation) changeObservation,
      FutureOr<void> Function(FetchObservation) fetchObservation}) {
    assert(() {
      if (changeObservation == null && fetchObservation == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.ChangeObservation:
        if (changeObservation == null) break;
        return changeObservation(this as ChangeObservation);
      case _UserProfileEvent.FetchObservation:
        if (fetchObservation == null) break;
        return fetchObservation(this as FetchObservation);
    }
  }

  @override
  List get props => const [];
}

@immutable
class ChangeObservation extends UserProfileEvent {
  const ChangeObservation({@required this.user, @required this.observe})
      : super(_UserProfileEvent.ChangeObservation);

  final User user;

  final bool observe;

  @override
  String toString() =>
      'ChangeObservation(user:${this.user},observe:${this.observe})';
  @override
  List get props => [user, observe];
}

@immutable
class FetchObservation extends UserProfileEvent {
  const FetchObservation({@required this.user})
      : super(_UserProfileEvent.FetchObservation);

  final User user;

  @override
  String toString() => 'FetchObservation(user:${this.user})';
  @override
  List get props => [user];
}
