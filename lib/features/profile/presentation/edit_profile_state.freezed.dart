// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

// ignore: unused_element
  _EditProfileState call(
      {@required bool progressBarVisible, @nullable User user}) {
    return _EditProfileState(
      progressBarVisible: progressBarVisible,
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  bool get progressBarVisible;
  @nullable
  User get user;

  $EditProfileStateCopyWith<EditProfileState> get copyWith;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call({bool progressBarVisible, @nullable User user});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object progressBarVisible = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      progressBarVisible: progressBarVisible == freezed
          ? _value.progressBarVisible
          : progressBarVisible as bool,
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) then) =
      __$EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({bool progressBarVisible, @nullable User user});
}

/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(
      _EditProfileState _value, $Res Function(_EditProfileState) _then)
      : super(_value, (v) => _then(v as _EditProfileState));

  @override
  _EditProfileState get _value => super._value as _EditProfileState;

  @override
  $Res call({
    Object progressBarVisible = freezed,
    Object user = freezed,
  }) {
    return _then(_EditProfileState(
      progressBarVisible: progressBarVisible == freezed
          ? _value.progressBarVisible
          : progressBarVisible as bool,
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$_EditProfileState
    with DiagnosticableTreeMixin
    implements _EditProfileState {
  _$_EditProfileState({@required this.progressBarVisible, @nullable this.user})
      : assert(progressBarVisible != null);

  @override
  final bool progressBarVisible;
  @override
  @nullable
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditProfileState(progressBarVisible: $progressBarVisible, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditProfileState'))
      ..add(DiagnosticsProperty('progressBarVisible', progressBarVisible))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.progressBarVisible, progressBarVisible) ||
                const DeepCollectionEquality()
                    .equals(other.progressBarVisible, progressBarVisible)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(progressBarVisible) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  factory _EditProfileState(
      {@required bool progressBarVisible,
      @nullable User user}) = _$_EditProfileState;

  @override
  bool get progressBarVisible;
  @override
  @nullable
  User get user;
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith;
}
