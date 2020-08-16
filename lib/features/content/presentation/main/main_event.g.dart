// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class MainEvent extends Equatable {
  const MainEvent(this._type);

  factory MainEvent.verifyAuthenticationState() = VerifyAuthenticationState;

  final _MainEvent _type;

//ignore: missing_return
  R when<R>(
      {@required
          R Function(VerifyAuthenticationState) verifyAuthenticationState}) {
    assert(() {
      if (verifyAuthenticationState == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MainEvent.VerifyAuthenticationState:
        return verifyAuthenticationState(this as VerifyAuthenticationState);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(VerifyAuthenticationState)
              verifyAuthenticationState}) {
    assert(() {
      if (verifyAuthenticationState == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MainEvent.VerifyAuthenticationState:
        return verifyAuthenticationState(this as VerifyAuthenticationState);
    }
  }

  R whenOrElse<R>(
      {R Function(VerifyAuthenticationState) verifyAuthenticationState,
      @required R Function(MainEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MainEvent.VerifyAuthenticationState:
        if (verifyAuthenticationState == null) break;
        return verifyAuthenticationState(this as VerifyAuthenticationState);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(VerifyAuthenticationState)
          verifyAuthenticationState,
      @required FutureOr<R> Function(MainEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MainEvent.VerifyAuthenticationState:
        if (verifyAuthenticationState == null) break;
        return verifyAuthenticationState(this as VerifyAuthenticationState);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(VerifyAuthenticationState)
          verifyAuthenticationState}) {
    assert(() {
      if (verifyAuthenticationState == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _MainEvent.VerifyAuthenticationState:
        if (verifyAuthenticationState == null) break;
        return verifyAuthenticationState(this as VerifyAuthenticationState);
    }
  }

  @override
  List get props => const [];
}

@immutable
class VerifyAuthenticationState extends MainEvent {
  const VerifyAuthenticationState._()
      : super(_MainEvent.VerifyAuthenticationState);

  factory VerifyAuthenticationState() {
    _instance ??= const VerifyAuthenticationState._();
    return _instance;
  }

  static VerifyAuthenticationState _instance;
}
