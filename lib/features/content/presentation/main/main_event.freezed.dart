// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MainEventTearOff {
  const _$MainEventTearOff();

// ignore: unused_element
  VerifyAuthenticationState verifyAuthenticationState() {
    return const VerifyAuthenticationState();
  }
}

/// @nodoc
// ignore: unused_element
const $MainEvent = _$MainEventTearOff();

/// @nodoc
mixin _$MainEvent {
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
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res> implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  final MainEvent _value;
  // ignore: unused_field
  final $Res Function(MainEvent) _then;
}

/// @nodoc
abstract class $VerifyAuthenticationStateCopyWith<$Res> {
  factory $VerifyAuthenticationStateCopyWith(VerifyAuthenticationState value,
          $Res Function(VerifyAuthenticationState) then) =
      _$VerifyAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyAuthenticationStateCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res>
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
    return 'MainEvent.verifyAuthenticationState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.verifyAuthenticationState'));
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

abstract class VerifyAuthenticationState implements MainEvent {
  const factory VerifyAuthenticationState() = _$VerifyAuthenticationState;
}
