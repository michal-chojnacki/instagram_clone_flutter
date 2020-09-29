// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_page_side_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginPageSideEffectTearOff {
  const _$LoginPageSideEffectTearOff();

// ignore: unused_element
  OpenMainUserPage openMainUserPage() {
    return OpenMainUserPage();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginPageSideEffect = _$LoginPageSideEffectTearOff();

/// @nodoc
mixin _$LoginPageSideEffect {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openMainUserPage(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openMainUserPage(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openMainUserPage(OpenMainUserPage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openMainUserPage(OpenMainUserPage value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginPageSideEffectCopyWith<$Res> {
  factory $LoginPageSideEffectCopyWith(
          LoginPageSideEffect value, $Res Function(LoginPageSideEffect) then) =
      _$LoginPageSideEffectCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPageSideEffectCopyWithImpl<$Res>
    implements $LoginPageSideEffectCopyWith<$Res> {
  _$LoginPageSideEffectCopyWithImpl(this._value, this._then);

  final LoginPageSideEffect _value;
  // ignore: unused_field
  final $Res Function(LoginPageSideEffect) _then;
}

/// @nodoc
abstract class $OpenMainUserPageCopyWith<$Res> {
  factory $OpenMainUserPageCopyWith(
          OpenMainUserPage value, $Res Function(OpenMainUserPage) then) =
      _$OpenMainUserPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenMainUserPageCopyWithImpl<$Res>
    extends _$LoginPageSideEffectCopyWithImpl<$Res>
    implements $OpenMainUserPageCopyWith<$Res> {
  _$OpenMainUserPageCopyWithImpl(
      OpenMainUserPage _value, $Res Function(OpenMainUserPage) _then)
      : super(_value, (v) => _then(v as OpenMainUserPage));

  @override
  OpenMainUserPage get _value => super._value as OpenMainUserPage;
}

/// @nodoc
class _$OpenMainUserPage
    with DiagnosticableTreeMixin
    implements OpenMainUserPage {
  _$OpenMainUserPage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginPageSideEffect.openMainUserPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'LoginPageSideEffect.openMainUserPage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenMainUserPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openMainUserPage(),
  }) {
    assert(openMainUserPage != null);
    return openMainUserPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openMainUserPage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openMainUserPage != null) {
      return openMainUserPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openMainUserPage(OpenMainUserPage value),
  }) {
    assert(openMainUserPage != null);
    return openMainUserPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openMainUserPage(OpenMainUserPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openMainUserPage != null) {
      return openMainUserPage(this);
    }
    return orElse();
  }
}

abstract class OpenMainUserPage implements LoginPageSideEffect {
  factory OpenMainUserPage() = _$OpenMainUserPage;
}
