// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recommended_profiles_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RecommendedProfilesEventTearOff {
  const _$RecommendedProfilesEventTearOff();

// ignore: unused_element
  FetchRecommendedProfiles fetchRecommendedProfiles() {
    return const FetchRecommendedProfiles();
  }

// ignore: unused_element
  ObserveUser observeUser({@required User user}) {
    return ObserveUser(
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RecommendedProfilesEvent = _$RecommendedProfilesEventTearOff();

/// @nodoc
mixin _$RecommendedProfilesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRecommendedProfiles(),
    @required Result observeUser(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRecommendedProfiles(),
    Result observeUser(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRecommendedProfiles(FetchRecommendedProfiles value),
    @required Result observeUser(ObserveUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRecommendedProfiles(FetchRecommendedProfiles value),
    Result observeUser(ObserveUser value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RecommendedProfilesEventCopyWith<$Res> {
  factory $RecommendedProfilesEventCopyWith(RecommendedProfilesEvent value,
          $Res Function(RecommendedProfilesEvent) then) =
      _$RecommendedProfilesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecommendedProfilesEventCopyWithImpl<$Res>
    implements $RecommendedProfilesEventCopyWith<$Res> {
  _$RecommendedProfilesEventCopyWithImpl(this._value, this._then);

  final RecommendedProfilesEvent _value;
  // ignore: unused_field
  final $Res Function(RecommendedProfilesEvent) _then;
}

/// @nodoc
abstract class $FetchRecommendedProfilesCopyWith<$Res> {
  factory $FetchRecommendedProfilesCopyWith(FetchRecommendedProfiles value,
          $Res Function(FetchRecommendedProfiles) then) =
      _$FetchRecommendedProfilesCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchRecommendedProfilesCopyWithImpl<$Res>
    extends _$RecommendedProfilesEventCopyWithImpl<$Res>
    implements $FetchRecommendedProfilesCopyWith<$Res> {
  _$FetchRecommendedProfilesCopyWithImpl(FetchRecommendedProfiles _value,
      $Res Function(FetchRecommendedProfiles) _then)
      : super(_value, (v) => _then(v as FetchRecommendedProfiles));

  @override
  FetchRecommendedProfiles get _value =>
      super._value as FetchRecommendedProfiles;
}

/// @nodoc
class _$FetchRecommendedProfiles
    with DiagnosticableTreeMixin
    implements FetchRecommendedProfiles {
  const _$FetchRecommendedProfiles();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecommendedProfilesEvent.fetchRecommendedProfiles()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RecommendedProfilesEvent.fetchRecommendedProfiles'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchRecommendedProfiles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRecommendedProfiles(),
    @required Result observeUser(User user),
  }) {
    assert(fetchRecommendedProfiles != null);
    assert(observeUser != null);
    return fetchRecommendedProfiles();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRecommendedProfiles(),
    Result observeUser(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRecommendedProfiles != null) {
      return fetchRecommendedProfiles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRecommendedProfiles(FetchRecommendedProfiles value),
    @required Result observeUser(ObserveUser value),
  }) {
    assert(fetchRecommendedProfiles != null);
    assert(observeUser != null);
    return fetchRecommendedProfiles(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRecommendedProfiles(FetchRecommendedProfiles value),
    Result observeUser(ObserveUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRecommendedProfiles != null) {
      return fetchRecommendedProfiles(this);
    }
    return orElse();
  }
}

abstract class FetchRecommendedProfiles implements RecommendedProfilesEvent {
  const factory FetchRecommendedProfiles() = _$FetchRecommendedProfiles;
}

/// @nodoc
abstract class $ObserveUserCopyWith<$Res> {
  factory $ObserveUserCopyWith(
          ObserveUser value, $Res Function(ObserveUser) then) =
      _$ObserveUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ObserveUserCopyWithImpl<$Res>
    extends _$RecommendedProfilesEventCopyWithImpl<$Res>
    implements $ObserveUserCopyWith<$Res> {
  _$ObserveUserCopyWithImpl(
      ObserveUser _value, $Res Function(ObserveUser) _then)
      : super(_value, (v) => _then(v as ObserveUser));

  @override
  ObserveUser get _value => super._value as ObserveUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(ObserveUser(
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
class _$ObserveUser with DiagnosticableTreeMixin implements ObserveUser {
  const _$ObserveUser({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecommendedProfilesEvent.observeUser(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecommendedProfilesEvent.observeUser'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ObserveUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $ObserveUserCopyWith<ObserveUser> get copyWith =>
      _$ObserveUserCopyWithImpl<ObserveUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRecommendedProfiles(),
    @required Result observeUser(User user),
  }) {
    assert(fetchRecommendedProfiles != null);
    assert(observeUser != null);
    return observeUser(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRecommendedProfiles(),
    Result observeUser(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (observeUser != null) {
      return observeUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRecommendedProfiles(FetchRecommendedProfiles value),
    @required Result observeUser(ObserveUser value),
  }) {
    assert(fetchRecommendedProfiles != null);
    assert(observeUser != null);
    return observeUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRecommendedProfiles(FetchRecommendedProfiles value),
    Result observeUser(ObserveUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (observeUser != null) {
      return observeUser(this);
    }
    return orElse();
  }
}

abstract class ObserveUser implements RecommendedProfilesEvent {
  const factory ObserveUser({@required User user}) = _$ObserveUser;

  User get user;
  $ObserveUserCopyWith<ObserveUser> get copyWith;
}
