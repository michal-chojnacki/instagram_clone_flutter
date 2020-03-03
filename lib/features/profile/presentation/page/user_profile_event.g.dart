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

  final _UserProfileEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(FetchUserContent) fetchUserContent}) {
    assert(() {
      if (fetchUserContent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.FetchUserContent:
        return fetchUserContent(this as FetchUserContent);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(FetchUserContent) fetchUserContent,
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
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(FetchUserContent) fetchUserContent}) {
    assert(() {
      if (fetchUserContent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _UserProfileEvent.FetchUserContent:
        if (fetchUserContent == null) break;
        return fetchUserContent(this as FetchUserContent);
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
