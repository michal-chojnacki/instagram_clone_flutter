// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class NavigationEvent extends Equatable {
  const NavigationEvent(this._type);

  factory NavigationEvent.openMainUserPage() = OpenMainUserPage;

  factory NavigationEvent.openLoginPage() = OpenLoginPage;

  final _NavigationEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(OpenMainUserPage) openMainUserPage,
      @required FutureOr<R> Function(OpenLoginPage) openLoginPage}) {
    assert(() {
      if (openMainUserPage == null || openLoginPage == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.OpenMainUserPage:
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        return openLoginPage(this as OpenLoginPage);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(OpenMainUserPage) openMainUserPage,
      FutureOr<R> Function(OpenLoginPage) openLoginPage,
      @required FutureOr<R> Function(NavigationEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.OpenMainUserPage:
        if (openMainUserPage == null) break;
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        if (openLoginPage == null) break;
        return openLoginPage(this as OpenLoginPage);
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(OpenMainUserPage) openMainUserPage,
      FutureOr<void> Function(OpenLoginPage) openLoginPage}) {
    assert(() {
      if (openMainUserPage == null && openLoginPage == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.OpenMainUserPage:
        if (openMainUserPage == null) break;
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        if (openLoginPage == null) break;
        return openLoginPage(this as OpenLoginPage);
    }
  }

  @override
  List get props => const [];
}

@immutable
class OpenMainUserPage extends NavigationEvent {
  const OpenMainUserPage._() : super(_NavigationEvent.OpenMainUserPage);

  factory OpenMainUserPage() {
    _instance ??= OpenMainUserPage._();
    return _instance;
  }

  static OpenMainUserPage _instance;
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
