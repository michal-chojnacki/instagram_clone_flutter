// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_contents_grid_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class UserContentsGridEvent extends Equatable {
  const UserContentsGridEvent(this._type);

  factory UserContentsGridEvent.fetchUserContent({@required User user}) =
      FetchUserContent;

  factory UserContentsGridEvent.fetchCurrentUserContent() =
      FetchCurrentUserContent;

  final _UserContentsGridEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(FetchUserContent) fetchUserContent,
      @required R Function(FetchCurrentUserContent) fetchCurrentUserContent}) {
    assert(() {
      if (fetchUserContent == null || fetchCurrentUserContent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserContentsGridEvent.FetchUserContent:
        return fetchUserContent(this as FetchUserContent);
      case _UserContentsGridEvent.FetchCurrentUserContent:
        return fetchCurrentUserContent(this as FetchCurrentUserContent);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(FetchUserContent) fetchUserContent,
      @required
          FutureOr<R> Function(FetchCurrentUserContent)
              fetchCurrentUserContent}) {
    assert(() {
      if (fetchUserContent == null || fetchCurrentUserContent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserContentsGridEvent.FetchUserContent:
        return fetchUserContent(this as FetchUserContent);
      case _UserContentsGridEvent.FetchCurrentUserContent:
        return fetchCurrentUserContent(this as FetchCurrentUserContent);
    }
  }

  R whenOrElse<R>(
      {R Function(FetchUserContent) fetchUserContent,
      R Function(FetchCurrentUserContent) fetchCurrentUserContent,
      @required R Function(UserContentsGridEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserContentsGridEvent.FetchUserContent:
        if (fetchUserContent == null) break;
        return fetchUserContent(this as FetchUserContent);
      case _UserContentsGridEvent.FetchCurrentUserContent:
        if (fetchCurrentUserContent == null) break;
        return fetchCurrentUserContent(this as FetchCurrentUserContent);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(FetchUserContent) fetchUserContent,
      FutureOr<R> Function(FetchCurrentUserContent) fetchCurrentUserContent,
      @required FutureOr<R> Function(UserContentsGridEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserContentsGridEvent.FetchUserContent:
        if (fetchUserContent == null) break;
        return fetchUserContent(this as FetchUserContent);
      case _UserContentsGridEvent.FetchCurrentUserContent:
        if (fetchCurrentUserContent == null) break;
        return fetchCurrentUserContent(this as FetchCurrentUserContent);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(FetchUserContent) fetchUserContent,
      FutureOr<void> Function(FetchCurrentUserContent)
          fetchCurrentUserContent}) {
    assert(() {
      if (fetchUserContent == null && fetchCurrentUserContent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _UserContentsGridEvent.FetchUserContent:
        if (fetchUserContent == null) break;
        return fetchUserContent(this as FetchUserContent);
      case _UserContentsGridEvent.FetchCurrentUserContent:
        if (fetchCurrentUserContent == null) break;
        return fetchCurrentUserContent(this as FetchCurrentUserContent);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchUserContent extends UserContentsGridEvent {
  const FetchUserContent({@required this.user})
      : super(_UserContentsGridEvent.FetchUserContent);

  final User user;

  @override
  String toString() => 'FetchUserContent(user:${this.user})';
  @override
  List get props => [user];
}

@immutable
class FetchCurrentUserContent extends UserContentsGridEvent {
  const FetchCurrentUserContent._()
      : super(_UserContentsGridEvent.FetchCurrentUserContent);

  factory FetchCurrentUserContent() {
    _instance ??= const FetchCurrentUserContent._();
    return _instance;
  }

  static FetchCurrentUserContent _instance;
}