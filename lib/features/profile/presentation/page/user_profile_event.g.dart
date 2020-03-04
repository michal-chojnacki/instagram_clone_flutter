// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class UserProfileEvent extends Equatable {
  const UserProfileEvent(this._type);

  factory UserProfileEvent.fetchUserContent({@required User user}) =
      FetchUserContent;

  factory UserProfileEvent.changeObservation(
      {@required User user, @required bool observe}) = ChangeObservation;

  final _UserProfileEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(FetchUserContent) fetchUserContent,
      @required R Function(ChangeObservation) changeObservation}) {
    assert(() {
      if (fetchUserContent == null || changeObservation == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.FetchUserContent:
        return fetchUserContent(this as FetchUserContent);
      case _UserProfileEvent.ChangeObservation:
        return changeObservation(this as ChangeObservation);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(FetchUserContent) fetchUserContent,
      @required FutureOr<R> Function(ChangeObservation) changeObservation}) {
    assert(() {
      if (fetchUserContent == null || changeObservation == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.FetchUserContent:
        return fetchUserContent(this as FetchUserContent);
      case _UserProfileEvent.ChangeObservation:
        return changeObservation(this as ChangeObservation);
    }
  }

  R whenOrElse<R>(
      {R Function(FetchUserContent) fetchUserContent,
      R Function(ChangeObservation) changeObservation,
      @required R Function(UserProfileEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.FetchUserContent:
        if (fetchUserContent == null) break;
        return fetchUserContent(this as FetchUserContent);
      case _UserProfileEvent.ChangeObservation:
        if (changeObservation == null) break;
        return changeObservation(this as ChangeObservation);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(FetchUserContent) fetchUserContent,
      FutureOr<R> Function(ChangeObservation) changeObservation,
      @required FutureOr<R> Function(UserProfileEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.FetchUserContent:
        if (fetchUserContent == null) break;
        return fetchUserContent(this as FetchUserContent);
      case _UserProfileEvent.ChangeObservation:
        if (changeObservation == null) break;
        return changeObservation(this as ChangeObservation);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(FetchUserContent) fetchUserContent,
      FutureOr<void> Function(ChangeObservation) changeObservation}) {
    assert(() {
      if (fetchUserContent == null && changeObservation == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.FetchUserContent:
        if (fetchUserContent == null) break;
        return fetchUserContent(this as FetchUserContent);
      case _UserProfileEvent.ChangeObservation:
        if (changeObservation == null) break;
        return changeObservation(this as ChangeObservation);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchUserContent extends UserProfileEvent {
  const FetchUserContent({@required this.user})
      : super(_UserProfileEvent.FetchUserContent);

  final User user;

  @override
  String toString() => 'FetchUserContent(user:${this.user})';
  @override
  List get props => [user];
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
