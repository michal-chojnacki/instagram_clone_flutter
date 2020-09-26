// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginPageStateTearOff {
  const _$LoginPageStateTearOff();

// ignore: unused_element
  _LoginPageState call(
      {@required bool loading,
      @required bool error,
      @required bool registerMode}) {
    return _LoginPageState(
      loading: loading,
      error: error,
      registerMode: registerMode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginPageState = _$LoginPageStateTearOff();

/// @nodoc
mixin _$LoginPageState {
  bool get loading;
  bool get error;
  bool get registerMode;

  $LoginPageStateCopyWith<LoginPageState> get copyWith;
}

/// @nodoc
abstract class $LoginPageStateCopyWith<$Res> {
  factory $LoginPageStateCopyWith(
          LoginPageState value, $Res Function(LoginPageState) then) =
      _$LoginPageStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool error, bool registerMode});
}

/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._value, this._then);

  final LoginPageState _value;
  // ignore: unused_field
  final $Res Function(LoginPageState) _then;

  @override
  $Res call({
    Object loading = freezed,
    Object error = freezed,
    Object registerMode = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed ? _value.loading : loading as bool,
      error: error == freezed ? _value.error : error as bool,
      registerMode:
          registerMode == freezed ? _value.registerMode : registerMode as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginPageStateCopyWith<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  factory _$LoginPageStateCopyWith(
          _LoginPageState value, $Res Function(_LoginPageState) then) =
      __$LoginPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool error, bool registerMode});
}

/// @nodoc
class __$LoginPageStateCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res>
    implements _$LoginPageStateCopyWith<$Res> {
  __$LoginPageStateCopyWithImpl(
      _LoginPageState _value, $Res Function(_LoginPageState) _then)
      : super(_value, (v) => _then(v as _LoginPageState));

  @override
  _LoginPageState get _value => super._value as _LoginPageState;

  @override
  $Res call({
    Object loading = freezed,
    Object error = freezed,
    Object registerMode = freezed,
  }) {
    return _then(_LoginPageState(
      loading: loading == freezed ? _value.loading : loading as bool,
      error: error == freezed ? _value.error : error as bool,
      registerMode:
          registerMode == freezed ? _value.registerMode : registerMode as bool,
    ));
  }
}

/// @nodoc
class _$_LoginPageState
    with DiagnosticableTreeMixin
    implements _LoginPageState {
  _$_LoginPageState(
      {@required this.loading,
      @required this.error,
      @required this.registerMode})
      : assert(loading != null),
        assert(error != null),
        assert(registerMode != null);

  @override
  final bool loading;
  @override
  final bool error;
  @override
  final bool registerMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginPageState(loading: $loading, error: $error, registerMode: $registerMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginPageState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('registerMode', registerMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginPageState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.registerMode, registerMode) ||
                const DeepCollectionEquality()
                    .equals(other.registerMode, registerMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(registerMode);

  @override
  _$LoginPageStateCopyWith<_LoginPageState> get copyWith =>
      __$LoginPageStateCopyWithImpl<_LoginPageState>(this, _$identity);
}

abstract class _LoginPageState implements LoginPageState {
  factory _LoginPageState(
      {@required bool loading,
      @required bool error,
      @required bool registerMode}) = _$_LoginPageState;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get registerMode;
  @override
  _$LoginPageStateCopyWith<_LoginPageState> get copyWith;
}
