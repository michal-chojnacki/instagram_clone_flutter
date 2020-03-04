// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_contents_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class MainContentsEvent extends Equatable {
  const MainContentsEvent(this._type);

  factory MainContentsEvent.fetchMainContents({@required int page}) =
      FetchMainContents;

  final _MainContentsEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(FetchMainContents) fetchMainContents}) {
    assert(() {
      if (fetchMainContents == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MainContentsEvent.FetchMainContents:
        return fetchMainContents(this as FetchMainContents);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(FetchMainContents) fetchMainContents}) {
    assert(() {
      if (fetchMainContents == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MainContentsEvent.FetchMainContents:
        return fetchMainContents(this as FetchMainContents);
    }
  }

  R whenOrElse<R>(
      {R Function(FetchMainContents) fetchMainContents,
      @required R Function(MainContentsEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MainContentsEvent.FetchMainContents:
        if (fetchMainContents == null) break;
        return fetchMainContents(this as FetchMainContents);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(FetchMainContents) fetchMainContents,
      @required FutureOr<R> Function(MainContentsEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MainContentsEvent.FetchMainContents:
        if (fetchMainContents == null) break;
        return fetchMainContents(this as FetchMainContents);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(FetchMainContents) fetchMainContents}) {
    assert(() {
      if (fetchMainContents == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _MainContentsEvent.FetchMainContents:
        if (fetchMainContents == null) break;
        return fetchMainContents(this as FetchMainContents);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchMainContents extends MainContentsEvent {
  const FetchMainContents({@required this.page})
      : super(_MainContentsEvent.FetchMainContents);

  final int page;

  @override
  String toString() => 'FetchMainContents(page:${this.page})';
  @override
  List get props => [page];
}
