// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawCredentials _$RawCredentialsFromJson(Map<String, dynamic> json) {
  return _RawCredentials.fromJson(json);
}

/// @nodoc
class _$RawCredentialsTearOff {
  const _$RawCredentialsTearOff();

// ignore: unused_element
  _RawCredentials call({@required String username, @required String password}) {
    return _RawCredentials(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  RawCredentials fromJson(Map<String, Object> json) {
    return RawCredentials.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawCredentials = _$RawCredentialsTearOff();

/// @nodoc
mixin _$RawCredentials {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  $RawCredentialsCopyWith<RawCredentials> get copyWith;
}

/// @nodoc
abstract class $RawCredentialsCopyWith<$Res> {
  factory $RawCredentialsCopyWith(
          RawCredentials value, $Res Function(RawCredentials) then) =
      _$RawCredentialsCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$RawCredentialsCopyWithImpl<$Res>
    implements $RawCredentialsCopyWith<$Res> {
  _$RawCredentialsCopyWithImpl(this._value, this._then);

  final RawCredentials _value;
  // ignore: unused_field
  final $Res Function(RawCredentials) _then;

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
abstract class _$RawCredentialsCopyWith<$Res>
    implements $RawCredentialsCopyWith<$Res> {
  factory _$RawCredentialsCopyWith(
          _RawCredentials value, $Res Function(_RawCredentials) then) =
      __$RawCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$RawCredentialsCopyWithImpl<$Res>
    extends _$RawCredentialsCopyWithImpl<$Res>
    implements _$RawCredentialsCopyWith<$Res> {
  __$RawCredentialsCopyWithImpl(
      _RawCredentials _value, $Res Function(_RawCredentials) _then)
      : super(_value, (v) => _then(v as _RawCredentials));

  @override
  _RawCredentials get _value => super._value as _RawCredentials;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_RawCredentials(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawCredentials
    with DiagnosticableTreeMixin
    implements _RawCredentials {
  _$_RawCredentials({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  factory _$_RawCredentials.fromJson(Map<String, dynamic> json) =>
      _$_$_RawCredentialsFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawCredentials(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawCredentials'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawCredentials &&
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
  _$RawCredentialsCopyWith<_RawCredentials> get copyWith =>
      __$RawCredentialsCopyWithImpl<_RawCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawCredentialsToJson(this);
  }
}

abstract class _RawCredentials implements RawCredentials {
  factory _RawCredentials(
      {@required String username,
      @required String password}) = _$_RawCredentials;

  factory _RawCredentials.fromJson(Map<String, dynamic> json) =
      _$_RawCredentials.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  _$RawCredentialsCopyWith<_RawCredentials> get copyWith;
}
