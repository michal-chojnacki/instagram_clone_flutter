// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

// ignore: unused_element
  ChangeObservation changeObservation(
      {@required User user, @required bool observe}) {
    return ChangeObservation(
      user: user,
      observe: observe,
    );
  }

// ignore: unused_element
  FetchObservation fetchObservation({@required User user}) {
    return FetchObservation(
      user: user,
    );
  }

// ignore: unused_element
  RefreshUserData refreshUserData({@required User user}) {
    return RefreshUserData(
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileEvent = _$UserProfileEventTearOff();

/// @nodoc
mixin _$UserProfileEvent {
  User get user;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeObservation(User user, bool observe),
    @required Result fetchObservation(User user),
    @required Result refreshUserData(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeObservation(User user, bool observe),
    Result fetchObservation(User user),
    Result refreshUserData(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeObservation(ChangeObservation value),
    @required Result fetchObservation(FetchObservation value),
    @required Result refreshUserData(RefreshUserData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeObservation(ChangeObservation value),
    Result fetchObservation(FetchObservation value),
    Result refreshUserData(RefreshUserData value),
    @required Result orElse(),
  });

  $UserProfileEventCopyWith<UserProfileEvent> get copyWith;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class $ChangeObservationCopyWith<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  factory $ChangeObservationCopyWith(
          ChangeObservation value, $Res Function(ChangeObservation) then) =
      _$ChangeObservationCopyWithImpl<$Res>;
  @override
  $Res call({User user, bool observe});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChangeObservationCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements $ChangeObservationCopyWith<$Res> {
  _$ChangeObservationCopyWithImpl(
      ChangeObservation _value, $Res Function(ChangeObservation) _then)
      : super(_value, (v) => _then(v as ChangeObservation));

  @override
  ChangeObservation get _value => super._value as ChangeObservation;

  @override
  $Res call({
    Object user = freezed,
    Object observe = freezed,
  }) {
    return _then(ChangeObservation(
      user: user == freezed ? _value.user : user as User,
      observe: observe == freezed ? _value.observe : observe as bool,
    ));
  }
}

/// @nodoc
class _$ChangeObservation
    with DiagnosticableTreeMixin
    implements ChangeObservation {
  const _$ChangeObservation({@required this.user, @required this.observe})
      : assert(user != null),
        assert(observe != null);

  @override
  final User user;
  @override
  final bool observe;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.changeObservation(user: $user, observe: $observe)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.changeObservation'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('observe', observe));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeObservation &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.observe, observe) ||
                const DeepCollectionEquality().equals(other.observe, observe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(observe);

  @override
  $ChangeObservationCopyWith<ChangeObservation> get copyWith =>
      _$ChangeObservationCopyWithImpl<ChangeObservation>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeObservation(User user, bool observe),
    @required Result fetchObservation(User user),
    @required Result refreshUserData(User user),
  }) {
    assert(changeObservation != null);
    assert(fetchObservation != null);
    assert(refreshUserData != null);
    return changeObservation(user, observe);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeObservation(User user, bool observe),
    Result fetchObservation(User user),
    Result refreshUserData(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeObservation != null) {
      return changeObservation(user, observe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeObservation(ChangeObservation value),
    @required Result fetchObservation(FetchObservation value),
    @required Result refreshUserData(RefreshUserData value),
  }) {
    assert(changeObservation != null);
    assert(fetchObservation != null);
    assert(refreshUserData != null);
    return changeObservation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeObservation(ChangeObservation value),
    Result fetchObservation(FetchObservation value),
    Result refreshUserData(RefreshUserData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeObservation != null) {
      return changeObservation(this);
    }
    return orElse();
  }
}

abstract class ChangeObservation implements UserProfileEvent {
  const factory ChangeObservation(
      {@required User user, @required bool observe}) = _$ChangeObservation;

  @override
  User get user;
  bool get observe;
  @override
  $ChangeObservationCopyWith<ChangeObservation> get copyWith;
}

/// @nodoc
abstract class $FetchObservationCopyWith<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  factory $FetchObservationCopyWith(
          FetchObservation value, $Res Function(FetchObservation) then) =
      _$FetchObservationCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$FetchObservationCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements $FetchObservationCopyWith<$Res> {
  _$FetchObservationCopyWithImpl(
      FetchObservation _value, $Res Function(FetchObservation) _then)
      : super(_value, (v) => _then(v as FetchObservation));

  @override
  FetchObservation get _value => super._value as FetchObservation;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(FetchObservation(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$FetchObservation
    with DiagnosticableTreeMixin
    implements FetchObservation {
  const _$FetchObservation({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.fetchObservation(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.fetchObservation'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchObservation &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $FetchObservationCopyWith<FetchObservation> get copyWith =>
      _$FetchObservationCopyWithImpl<FetchObservation>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeObservation(User user, bool observe),
    @required Result fetchObservation(User user),
    @required Result refreshUserData(User user),
  }) {
    assert(changeObservation != null);
    assert(fetchObservation != null);
    assert(refreshUserData != null);
    return fetchObservation(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeObservation(User user, bool observe),
    Result fetchObservation(User user),
    Result refreshUserData(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchObservation != null) {
      return fetchObservation(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeObservation(ChangeObservation value),
    @required Result fetchObservation(FetchObservation value),
    @required Result refreshUserData(RefreshUserData value),
  }) {
    assert(changeObservation != null);
    assert(fetchObservation != null);
    assert(refreshUserData != null);
    return fetchObservation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeObservation(ChangeObservation value),
    Result fetchObservation(FetchObservation value),
    Result refreshUserData(RefreshUserData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchObservation != null) {
      return fetchObservation(this);
    }
    return orElse();
  }
}

abstract class FetchObservation implements UserProfileEvent {
  const factory FetchObservation({@required User user}) = _$FetchObservation;

  @override
  User get user;
  @override
  $FetchObservationCopyWith<FetchObservation> get copyWith;
}

/// @nodoc
abstract class $RefreshUserDataCopyWith<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  factory $RefreshUserDataCopyWith(
          RefreshUserData value, $Res Function(RefreshUserData) then) =
      _$RefreshUserDataCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RefreshUserDataCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements $RefreshUserDataCopyWith<$Res> {
  _$RefreshUserDataCopyWithImpl(
      RefreshUserData _value, $Res Function(RefreshUserData) _then)
      : super(_value, (v) => _then(v as RefreshUserData));

  @override
  RefreshUserData get _value => super._value as RefreshUserData;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(RefreshUserData(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$RefreshUserData
    with DiagnosticableTreeMixin
    implements RefreshUserData {
  const _$RefreshUserData({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.refreshUserData(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.refreshUserData'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshUserData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $RefreshUserDataCopyWith<RefreshUserData> get copyWith =>
      _$RefreshUserDataCopyWithImpl<RefreshUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeObservation(User user, bool observe),
    @required Result fetchObservation(User user),
    @required Result refreshUserData(User user),
  }) {
    assert(changeObservation != null);
    assert(fetchObservation != null);
    assert(refreshUserData != null);
    return refreshUserData(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeObservation(User user, bool observe),
    Result fetchObservation(User user),
    Result refreshUserData(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshUserData != null) {
      return refreshUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeObservation(ChangeObservation value),
    @required Result fetchObservation(FetchObservation value),
    @required Result refreshUserData(RefreshUserData value),
  }) {
    assert(changeObservation != null);
    assert(fetchObservation != null);
    assert(refreshUserData != null);
    return refreshUserData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeObservation(ChangeObservation value),
    Result fetchObservation(FetchObservation value),
    Result refreshUserData(RefreshUserData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshUserData != null) {
      return refreshUserData(this);
    }
    return orElse();
  }
}

abstract class RefreshUserData implements UserProfileEvent {
  const factory RefreshUserData({@required User user}) = _$RefreshUserData;

  @override
  User get user;
  @override
  $RefreshUserDataCopyWith<RefreshUserData> get copyWith;
}
