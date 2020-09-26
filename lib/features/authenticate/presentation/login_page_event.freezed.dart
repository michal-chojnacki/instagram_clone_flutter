// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginPageEventTearOff {
  const _$LoginPageEventTearOff();

// ignore: unused_element
  AuthenticateUser authenticateUser(
      {@required String username, @required String password}) {
    return AuthenticateUser(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  RegisterUser registerUser(
      {@required String username, @required String password}) {
    return RegisterUser(
      username: username,
      password: password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginPageEvent = _$LoginPageEventTearOff();

/// @nodoc
mixin _$LoginPageEvent {
  String get username;
  String get password;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticateUser(String username, String password),
    @required Result registerUser(String username, String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticateUser(String username, String password),
    Result registerUser(String username, String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticateUser(AuthenticateUser value),
    @required Result registerUser(RegisterUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticateUser(AuthenticateUser value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  });

  $LoginPageEventCopyWith<LoginPageEvent> get copyWith;
}

/// @nodoc
abstract class $LoginPageEventCopyWith<$Res> {
  factory $LoginPageEventCopyWith(
          LoginPageEvent value, $Res Function(LoginPageEvent) then) =
      _$LoginPageEventCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginPageEventCopyWithImpl<$Res>
    implements $LoginPageEventCopyWith<$Res> {
  _$LoginPageEventCopyWithImpl(this._value, this._then);

  final LoginPageEvent _value;
  // ignore: unused_field
  final $Res Function(LoginPageEvent) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class $AuthenticateUserCopyWith<$Res>
    implements $LoginPageEventCopyWith<$Res> {
  factory $AuthenticateUserCopyWith(
          AuthenticateUser value, $Res Function(AuthenticateUser) then) =
      _$AuthenticateUserCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class _$AuthenticateUserCopyWithImpl<$Res>
    extends _$LoginPageEventCopyWithImpl<$Res>
    implements $AuthenticateUserCopyWith<$Res> {
  _$AuthenticateUserCopyWithImpl(
      AuthenticateUser _value, $Res Function(AuthenticateUser) _then)
      : super(_value, (v) => _then(v as AuthenticateUser));

  @override
  AuthenticateUser get _value => super._value as AuthenticateUser;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(AuthenticateUser(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$AuthenticateUser
    with DiagnosticableTreeMixin
    implements AuthenticateUser {
  const _$AuthenticateUser({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginPageEvent.authenticateUser(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginPageEvent.authenticateUser'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticateUser &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @override
  $AuthenticateUserCopyWith<AuthenticateUser> get copyWith =>
      _$AuthenticateUserCopyWithImpl<AuthenticateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticateUser(String username, String password),
    @required Result registerUser(String username, String password),
  }) {
    assert(authenticateUser != null);
    assert(registerUser != null);
    return authenticateUser(username, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticateUser(String username, String password),
    Result registerUser(String username, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticateUser != null) {
      return authenticateUser(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticateUser(AuthenticateUser value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(authenticateUser != null);
    assert(registerUser != null);
    return authenticateUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticateUser(AuthenticateUser value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticateUser != null) {
      return authenticateUser(this);
    }
    return orElse();
  }
}

abstract class AuthenticateUser implements LoginPageEvent {
  const factory AuthenticateUser(
      {@required String username,
      @required String password}) = _$AuthenticateUser;

  @override
  String get username;
  @override
  String get password;
  @override
  $AuthenticateUserCopyWith<AuthenticateUser> get copyWith;
}

/// @nodoc
abstract class $RegisterUserCopyWith<$Res>
    implements $LoginPageEventCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class _$RegisterUserCopyWithImpl<$Res>
    extends _$LoginPageEventCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(RegisterUser(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$RegisterUser with DiagnosticableTreeMixin implements RegisterUser {
  const _$RegisterUser({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginPageEvent.registerUser(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginPageEvent.registerUser'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUser &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @override
  $RegisterUserCopyWith<RegisterUser> get copyWith =>
      _$RegisterUserCopyWithImpl<RegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticateUser(String username, String password),
    @required Result registerUser(String username, String password),
  }) {
    assert(authenticateUser != null);
    assert(registerUser != null);
    return registerUser(username, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticateUser(String username, String password),
    Result registerUser(String username, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticateUser(AuthenticateUser value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(authenticateUser != null);
    assert(registerUser != null);
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticateUser(AuthenticateUser value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements LoginPageEvent {
  const factory RegisterUser(
      {@required String username, @required String password}) = _$RegisterUser;

  @override
  String get username;
  @override
  String get password;
  @override
  $RegisterUserCopyWith<RegisterUser> get copyWith;
}
