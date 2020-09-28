// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'init_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InitEventTearOff {
  const _$InitEventTearOff();

// ignore: unused_element
  VerifyAuthenticationState verifyAuthenticationState() {
    return const VerifyAuthenticationState();
  }
}

/// @nodoc
// ignore: unused_element
const $InitEvent = _$InitEventTearOff();

/// @nodoc
mixin _$InitEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verifyAuthenticationState(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verifyAuthenticationState(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verifyAuthenticationState(VerifyAuthenticationState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verifyAuthenticationState(VerifyAuthenticationState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $InitEventCopyWith<$Res> {
  factory $InitEventCopyWith(InitEvent value, $Res Function(InitEvent) then) =
      _$InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventCopyWithImpl<$Res> implements $InitEventCopyWith<$Res> {
  _$InitEventCopyWithImpl(this._value, this._then);

  final InitEvent _value;
  // ignore: unused_field
  final $Res Function(InitEvent) _then;
}

/// @nodoc
abstract class $VerifyAuthenticationStateCopyWith<$Res> {
  factory $VerifyAuthenticationStateCopyWith(VerifyAuthenticationState value,
          $Res Function(VerifyAuthenticationState) then) =
      _$VerifyAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyAuthenticationStateCopyWithImpl<$Res>
    extends _$InitEventCopyWithImpl<$Res>
    implements $VerifyAuthenticationStateCopyWith<$Res> {
  _$VerifyAuthenticationStateCopyWithImpl(VerifyAuthenticationState _value,
      $Res Function(VerifyAuthenticationState) _then)
      : super(_value, (v) => _then(v as VerifyAuthenticationState));

  @override
  VerifyAuthenticationState get _value =>
      super._value as VerifyAuthenticationState;
}

/// @nodoc
class _$VerifyAuthenticationState
    with DiagnosticableTreeMixin
    implements VerifyAuthenticationState {
  const _$VerifyAuthenticationState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitEvent.verifyAuthenticationState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InitEvent.verifyAuthenticationState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyAuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verifyAuthenticationState(),
  }) {
    assert(verifyAuthenticationState != null);
    return verifyAuthenticationState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verifyAuthenticationState(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyAuthenticationState != null) {
      return verifyAuthenticationState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verifyAuthenticationState(VerifyAuthenticationState value),
  }) {
    assert(verifyAuthenticationState != null);
    return verifyAuthenticationState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verifyAuthenticationState(VerifyAuthenticationState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyAuthenticationState != null) {
      return verifyAuthenticationState(this);
    }
    return orElse();
  }
}

abstract class VerifyAuthenticationState implements InitEvent {
  const factory VerifyAuthenticationState() = _$VerifyAuthenticationState;
}
