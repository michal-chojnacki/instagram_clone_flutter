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

  factory LoginPageEvent.registerUser(
      {@required String username, @required String password}) = RegisterUser;

  final _LoginPageEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(AuthenticateUser) authenticateUser,
      @required FutureOr<R> Function(RegisterUser) registerUser}) {
    assert(() {
      if (authenticateUser == null || registerUser == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _LoginPageEvent.AuthenticateUser:
        return authenticateUser(this as AuthenticateUser);
      case _LoginPageEvent.RegisterUser:
        return registerUser(this as RegisterUser);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(AuthenticateUser) authenticateUser,
      FutureOr<R> Function(RegisterUser) registerUser,
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
      case _LoginPageEvent.RegisterUser:
        if (registerUser == null) break;
        return registerUser(this as RegisterUser);
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(AuthenticateUser) authenticateUser,
      FutureOr<void> Function(RegisterUser) registerUser}) {
    assert(() {
      if (authenticateUser == null && registerUser == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _LoginPageEvent.AuthenticateUser:
        if (authenticateUser == null) break;
        return authenticateUser(this as AuthenticateUser);
      case _LoginPageEvent.RegisterUser:
        if (registerUser == null) break;
        return registerUser(this as RegisterUser);
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

@immutable
class RegisterUser extends LoginPageEvent {
  const RegisterUser({@required this.username, @required this.password})
      : super(_LoginPageEvent.RegisterUser);

  final String username;

  final String password;

  @override
  String toString() =>
      'RegisterUser(username:${this.username},password:${this.password})';
  @override
  List get props => [username, password];
}
