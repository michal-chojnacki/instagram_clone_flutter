// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

// ignore: unused_element
  _UserProfileState call(
      {@required bool observing,
      @required bool progressBarVisible,
      @nullable User user}) {
    return _UserProfileState(
      observing: observing,
      progressBarVisible: progressBarVisible,
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  bool get observing;
  bool get progressBarVisible;
  @nullable
  User get user;

  $UserProfileStateCopyWith<UserProfileState> get copyWith;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
  $Res call({bool observing, bool progressBarVisible, @nullable User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;

  @override
  $Res call({
    Object observing = freezed,
    Object progressBarVisible = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      observing: observing == freezed ? _value.observing : observing as bool,
      progressBarVisible: progressBarVisible == freezed
          ? _value.progressBarVisible
          : progressBarVisible as bool,
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileStateCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(
          _UserProfileState value, $Res Function(_UserProfileState) then) =
      __$UserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({bool observing, bool progressBarVisible, @nullable User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserProfileStateCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$UserProfileStateCopyWith<$Res> {
  __$UserProfileStateCopyWithImpl(
      _UserProfileState _value, $Res Function(_UserProfileState) _then)
      : super(_value, (v) => _then(v as _UserProfileState));

  @override
  _UserProfileState get _value => super._value as _UserProfileState;

  @override
  $Res call({
    Object observing = freezed,
    Object progressBarVisible = freezed,
    Object user = freezed,
  }) {
    return _then(_UserProfileState(
      observing: observing == freezed ? _value.observing : observing as bool,
      progressBarVisible: progressBarVisible == freezed
          ? _value.progressBarVisible
          : progressBarVisible as bool,
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$_UserProfileState
    with DiagnosticableTreeMixin
    implements _UserProfileState {
  _$_UserProfileState(
      {@required this.observing,
      @required this.progressBarVisible,
      @nullable this.user})
      : assert(observing != null),
        assert(progressBarVisible != null);

  @override
  final bool observing;
  @override
  final bool progressBarVisible;
  @override
  @nullable
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileState(observing: $observing, progressBarVisible: $progressBarVisible, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileState'))
      ..add(DiagnosticsProperty('observing', observing))
      ..add(DiagnosticsProperty('progressBarVisible', progressBarVisible))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileState &&
            (identical(other.observing, observing) ||
                const DeepCollectionEquality()
                    .equals(other.observing, observing)) &&
            (identical(other.progressBarVisible, progressBarVisible) ||
                const DeepCollectionEquality()
                    .equals(other.progressBarVisible, progressBarVisible)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(observing) ^
      const DeepCollectionEquality().hash(progressBarVisible) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  factory _UserProfileState(
      {@required bool observing,
      @required bool progressBarVisible,
      @nullable User user}) = _$_UserProfileState;

  @override
  bool get observing;
  @override
  bool get progressBarVisible;
  @override
  @nullable
  User get user;
  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith;
}
