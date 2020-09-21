// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class UserListEvent extends Equatable {
  const UserListEvent(this._type);

  factory UserListEvent.fetchFollowers(
      {@required int page, @required int userId}) = FetchFollowers;

  factory UserListEvent.fetchFollowees(
      {@required int page, @required int userId}) = FetchFollowees;

  final _UserListEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(FetchFollowers) fetchFollowers,
      @required R Function(FetchFollowees) fetchFollowees}) {
    assert(() {
      if (fetchFollowers == null || fetchFollowees == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserListEvent.FetchFollowers:
        return fetchFollowers(this as FetchFollowers);
      case _UserListEvent.FetchFollowees:
        return fetchFollowees(this as FetchFollowees);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(FetchFollowers) fetchFollowers,
      @required FutureOr<R> Function(FetchFollowees) fetchFollowees}) {
    assert(() {
      if (fetchFollowers == null || fetchFollowees == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserListEvent.FetchFollowers:
        return fetchFollowers(this as FetchFollowers);
      case _UserListEvent.FetchFollowees:
        return fetchFollowees(this as FetchFollowees);
    }
  }

  R whenOrElse<R>(
      {R Function(FetchFollowers) fetchFollowers,
      R Function(FetchFollowees) fetchFollowees,
      @required R Function(UserListEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserListEvent.FetchFollowers:
        if (fetchFollowers == null) break;
        return fetchFollowers(this as FetchFollowers);
      case _UserListEvent.FetchFollowees:
        if (fetchFollowees == null) break;
        return fetchFollowees(this as FetchFollowees);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(FetchFollowers) fetchFollowers,
      FutureOr<R> Function(FetchFollowees) fetchFollowees,
      @required FutureOr<R> Function(UserListEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserListEvent.FetchFollowers:
        if (fetchFollowers == null) break;
        return fetchFollowers(this as FetchFollowers);
      case _UserListEvent.FetchFollowees:
        if (fetchFollowees == null) break;
        return fetchFollowees(this as FetchFollowees);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(FetchFollowers) fetchFollowers,
      FutureOr<void> Function(FetchFollowees) fetchFollowees}) {
    assert(() {
      if (fetchFollowers == null && fetchFollowees == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _UserListEvent.FetchFollowers:
        if (fetchFollowers == null) break;
        return fetchFollowers(this as FetchFollowers);
      case _UserListEvent.FetchFollowees:
        if (fetchFollowees == null) break;
        return fetchFollowees(this as FetchFollowees);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchFollowers extends UserListEvent {
  const FetchFollowers({@required this.page, @required this.userId})
      : super(_UserListEvent.FetchFollowers);

  final int page;

  final int userId;

  @override
  String toString() =>
      'FetchFollowers(page:${this.page},userId:${this.userId})';
  @override
  List get props => [page, userId];
}

@immutable
class FetchFollowees extends UserListEvent {
  const FetchFollowees({@required this.page, @required this.userId})
      : super(_UserListEvent.FetchFollowees);

  final int page;

  final int userId;

  @override
  String toString() =>
      'FetchFollowees(page:${this.page},userId:${this.userId})';
  @override
  List get props => [page, userId];
}
