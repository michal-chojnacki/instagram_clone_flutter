// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'send_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SendContentStateTearOff {
  const _$SendContentStateTearOff();

// ignore: unused_element
  _SendContentState call(
      {@required bool progressBarVisible, @required bool error}) {
    return _SendContentState(
      progressBarVisible: progressBarVisible,
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SendContentState = _$SendContentStateTearOff();

/// @nodoc
mixin _$SendContentState {
  bool get progressBarVisible;
  bool get error;

  $SendContentStateCopyWith<SendContentState> get copyWith;
}

/// @nodoc
abstract class $SendContentStateCopyWith<$Res> {
  factory $SendContentStateCopyWith(
          SendContentState value, $Res Function(SendContentState) then) =
      _$SendContentStateCopyWithImpl<$Res>;
  $Res call({bool progressBarVisible, bool error});
}

/// @nodoc
class _$SendContentStateCopyWithImpl<$Res>
    implements $SendContentStateCopyWith<$Res> {
  _$SendContentStateCopyWithImpl(this._value, this._then);

  final SendContentState _value;
  // ignore: unused_field
  final $Res Function(SendContentState) _then;

  @override
  $Res call({
    Object progressBarVisible = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      progressBarVisible: progressBarVisible == freezed
          ? _value.progressBarVisible
          : progressBarVisible as bool,
      error: error == freezed ? _value.error : error as bool,
    ));
  }
}

/// @nodoc
abstract class _$SendContentStateCopyWith<$Res>
    implements $SendContentStateCopyWith<$Res> {
  factory _$SendContentStateCopyWith(
          _SendContentState value, $Res Function(_SendContentState) then) =
      __$SendContentStateCopyWithImpl<$Res>;
  @override
  $Res call({bool progressBarVisible, bool error});
}

/// @nodoc
class __$SendContentStateCopyWithImpl<$Res>
    extends _$SendContentStateCopyWithImpl<$Res>
    implements _$SendContentStateCopyWith<$Res> {
  __$SendContentStateCopyWithImpl(
      _SendContentState _value, $Res Function(_SendContentState) _then)
      : super(_value, (v) => _then(v as _SendContentState));

  @override
  _SendContentState get _value => super._value as _SendContentState;

  @override
  $Res call({
    Object progressBarVisible = freezed,
    Object error = freezed,
  }) {
    return _then(_SendContentState(
      progressBarVisible: progressBarVisible == freezed
          ? _value.progressBarVisible
          : progressBarVisible as bool,
      error: error == freezed ? _value.error : error as bool,
    ));
  }
}

/// @nodoc
class _$_SendContentState
    with DiagnosticableTreeMixin
    implements _SendContentState {
  _$_SendContentState({@required this.progressBarVisible, @required this.error})
      : assert(progressBarVisible != null),
        assert(error != null);

  @override
  final bool progressBarVisible;
  @override
  final bool error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SendContentState(progressBarVisible: $progressBarVisible, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SendContentState'))
      ..add(DiagnosticsProperty('progressBarVisible', progressBarVisible))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendContentState &&
            (identical(other.progressBarVisible, progressBarVisible) ||
                const DeepCollectionEquality()
                    .equals(other.progressBarVisible, progressBarVisible)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(progressBarVisible) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$SendContentStateCopyWith<_SendContentState> get copyWith =>
      __$SendContentStateCopyWithImpl<_SendContentState>(this, _$identity);
}

abstract class _SendContentState implements SendContentState {
  factory _SendContentState(
      {@required bool progressBarVisible,
      @required bool error}) = _$_SendContentState;

  @override
  bool get progressBarVisible;
  @override
  bool get error;
  @override
  _$SendContentStateCopyWith<_SendContentState> get copyWith;
}
