// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class NavigationEvent extends Equatable {
  const NavigationEvent(this._type);

  factory NavigationEvent.openMainContentPage() = OpenMainContentPage;

  factory NavigationEvent.openLoginPage() = OpenLoginPage;

  final _NavigationEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(OpenMainContentPage) openMainContentPage,
      @required FutureOr<R> Function(OpenLoginPage) openLoginPage}) {
    assert(() {
      if (openMainContentPage == null || openLoginPage == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.OpenMainContentPage:
        return openMainContentPage(this as OpenMainContentPage);
      case _NavigationEvent.OpenLoginPage:
        return openLoginPage(this as OpenLoginPage);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(OpenMainContentPage) openMainContentPage,
      FutureOr<R> Function(OpenLoginPage) openLoginPage,
      @required FutureOr<R> Function(NavigationEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.OpenMainContentPage:
        if (openMainContentPage == null) break;
        return openMainContentPage(this as OpenMainContentPage);
      case _NavigationEvent.OpenLoginPage:
        if (openLoginPage == null) break;
        return openLoginPage(this as OpenLoginPage);
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(OpenMainContentPage) openMainContentPage,
      FutureOr<void> Function(OpenLoginPage) openLoginPage}) {
    assert(() {
      if (openMainContentPage == null && openLoginPage == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.OpenMainContentPage:
        if (openMainContentPage == null) break;
        return openMainContentPage(this as OpenMainContentPage);
      case _NavigationEvent.OpenLoginPage:
        if (openLoginPage == null) break;
        return openLoginPage(this as OpenLoginPage);
    }
  }

  @override
  List get props => const [];
}

@immutable
class OpenMainContentPage extends NavigationEvent {
  const OpenMainContentPage._() : super(_NavigationEvent.OpenMainContentPage);

  factory OpenMainContentPage() {
    _instance ??= OpenMainContentPage._();
    return _instance;
  }

  static OpenMainContentPage _instance;
}

@immutable
class OpenLoginPage extends NavigationEvent {
  const OpenLoginPage._() : super(_NavigationEvent.OpenLoginPage);

  factory OpenLoginPage() {
    _instance ??= OpenLoginPage._();
    return _instance;
  }

  static OpenLoginPage _instance;
}
