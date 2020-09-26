// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CredentialsTearOff {
  const _$CredentialsTearOff();

// ignore: unused_element
  _Credentials call({@required String username, @required String password}) {
    return _Credentials(
      username: username,
      password: password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Credentials = _$CredentialsTearOff();

/// @nodoc
mixin _$Credentials {
  String get username;
  String get password;

  $CredentialsCopyWith<Credentials> get copyWith;
}

/// @nodoc
abstract class $CredentialsCopyWith<$Res> {
  factory $CredentialsCopyWith(
          Credentials value, $Res Function(Credentials) then) =
      _$CredentialsCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$CredentialsCopyWithImpl<$Res> implements $CredentialsCopyWith<$Res> {
  _$CredentialsCopyWithImpl(this._value, this._then);

  final Credentials _value;
  // ignore: unused_field
  final $Res Function(Credentials) _then;

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
abstract class _$CredentialsCopyWith<$Res>
    implements $CredentialsCopyWith<$Res> {
  factory _$CredentialsCopyWith(
          _Credentials value, $Res Function(_Credentials) then) =
      __$CredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$CredentialsCopyWithImpl<$Res> extends _$CredentialsCopyWithImpl<$Res>
    implements _$CredentialsCopyWith<$Res> {
  __$CredentialsCopyWithImpl(
      _Credentials _value, $Res Function(_Credentials) _then)
      : super(_value, (v) => _then(v as _Credentials));

  @override
  _Credentials get _value => super._value as _Credentials;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_Credentials(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_Credentials with DiagnosticableTreeMixin implements _Credentials {
  _$_Credentials({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Credentials(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Credentials'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Credentials &&
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
  _$CredentialsCopyWith<_Credentials> get copyWith =>
      __$CredentialsCopyWithImpl<_Credentials>(this, _$identity);
}

abstract class _Credentials implements Credentials {
  factory _Credentials({@required String username, @required String password}) =
      _$_Credentials;

  @override
  String get username;
  @override
  String get password;
  @override
  _$CredentialsCopyWith<_Credentials> get copyWith;
}
