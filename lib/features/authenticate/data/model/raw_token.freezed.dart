// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawToken _$RawTokenFromJson(Map<String, dynamic> json) {
  return _RawToken.fromJson(json);
}

/// @nodoc
class _$RawTokenTearOff {
  const _$RawTokenTearOff();

// ignore: unused_element
  _RawToken call({@nullable String token}) {
    return _RawToken(
      token: token,
    );
  }

// ignore: unused_element
  RawToken fromJson(Map<String, Object> json) {
    return RawToken.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawToken = _$RawTokenTearOff();

/// @nodoc
mixin _$RawToken {
  @nullable
  String get token;

  Map<String, dynamic> toJson();
  $RawTokenCopyWith<RawToken> get copyWith;
}

/// @nodoc
abstract class $RawTokenCopyWith<$Res> {
  factory $RawTokenCopyWith(RawToken value, $Res Function(RawToken) then) =
      _$RawTokenCopyWithImpl<$Res>;
  $Res call({@nullable String token});
}

/// @nodoc
class _$RawTokenCopyWithImpl<$Res> implements $RawTokenCopyWith<$Res> {
  _$RawTokenCopyWithImpl(this._value, this._then);

  final RawToken _value;
  // ignore: unused_field
  final $Res Function(RawToken) _then;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

/// @nodoc
abstract class _$RawTokenCopyWith<$Res> implements $RawTokenCopyWith<$Res> {
  factory _$RawTokenCopyWith(_RawToken value, $Res Function(_RawToken) then) =
      __$RawTokenCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String token});
}

/// @nodoc
class __$RawTokenCopyWithImpl<$Res> extends _$RawTokenCopyWithImpl<$Res>
    implements _$RawTokenCopyWith<$Res> {
  __$RawTokenCopyWithImpl(_RawToken _value, $Res Function(_RawToken) _then)
      : super(_value, (v) => _then(v as _RawToken));

  @override
  _RawToken get _value => super._value as _RawToken;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(_RawToken(
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawToken with DiagnosticableTreeMixin implements _RawToken {
  _$_RawToken({@nullable this.token});

  factory _$_RawToken.fromJson(Map<String, dynamic> json) =>
      _$_$_RawTokenFromJson(json);

  @override
  @nullable
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawToken(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawToken'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawToken &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @override
  _$RawTokenCopyWith<_RawToken> get copyWith =>
      __$RawTokenCopyWithImpl<_RawToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawTokenToJson(this);
  }
}

abstract class _RawToken implements RawToken {
  factory _RawToken({@nullable String token}) = _$_RawToken;

  factory _RawToken.fromJson(Map<String, dynamic> json) = _$_RawToken.fromJson;

  @override
  @nullable
  String get token;
  @override
  _$RawTokenCopyWith<_RawToken> get copyWith;
}
