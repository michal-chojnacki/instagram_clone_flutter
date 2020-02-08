// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_page_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class LoginPageEvent extends Equatable {
  const LoginPageEvent(this._type);

  factory LoginPageEvent.authenticateUser(
      {@required String username,
      @required String password}) = AuthenticateUser;

  final _LoginPageEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(AuthenticateUser) authenticateUser}) {
    assert(() {
      if (authenticateUser == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _LoginPageEvent.AuthenticateUser:
        return authenticateUser(this as AuthenticateUser);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(AuthenticateUser) authenticateUser,
      @required FutureOr<R> Function(LoginPageEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _LoginPageEvent.AuthenticateUser:
        if (authenticateUser == null) break;
        return authenticateUser(this as AuthenticateUser);
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(AuthenticateUser) authenticateUser}) {
    assert(() {
      if (authenticateUser == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _LoginPageEvent.AuthenticateUser:
        if (authenticateUser == null) break;
        return authenticateUser(this as AuthenticateUser);
    }
  }

  @override
  List get props => const [];
}

@immutable
class AuthenticateUser extends LoginPageEvent {
  const AuthenticateUser({@required this.username, @required this.password})
      : super(_LoginPageEvent.AuthenticateUser);

  final String username;

  final String password;

  @override
  String toString() =>
      'AuthenticateUser(username:${this.username},password:${this.password})';
  @override
  List get props => [username, password];
}
