// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditProfileEventTearOff {
  const _$EditProfileEventTearOff();

// ignore: unused_element
  FetchProfileData fetchProfileData() {
    return const FetchProfileData();
  }

// ignore: unused_element
  UpdateProfileData updateProfileData(
      {@nullable String avatarPath,
      @nullable String username,
      @nullable String fullname,
      @nullable String bio}) {
    return UpdateProfileData(
      avatarPath: avatarPath,
      username: username,
      fullname: fullname,
      bio: bio,
    );
  }

// ignore: unused_element
  Logout logout() {
    return const Logout();
  }
}

/// @nodoc
// ignore: unused_element
const $EditProfileEvent = _$EditProfileEventTearOff();

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchProfileData(),
    @required
        Result updateProfileData(
            @nullable String avatarPath,
            @nullable String username,
            @nullable String fullname,
            @nullable String bio),
    @required Result logout(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchProfileData(),
    Result updateProfileData(
        @nullable String avatarPath,
        @nullable String username,
        @nullable String fullname,
        @nullable String bio),
    Result logout(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchProfileData(FetchProfileData value),
    @required Result updateProfileData(UpdateProfileData value),
    @required Result logout(Logout value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchProfileData(FetchProfileData value),
    Result updateProfileData(UpdateProfileData value),
    Result logout(Logout value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;
}

/// @nodoc
abstract class $FetchProfileDataCopyWith<$Res> {
  factory $FetchProfileDataCopyWith(
          FetchProfileData value, $Res Function(FetchProfileData) then) =
      _$FetchProfileDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchProfileDataCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $FetchProfileDataCopyWith<$Res> {
  _$FetchProfileDataCopyWithImpl(
      FetchProfileData _value, $Res Function(FetchProfileData) _then)
      : super(_value, (v) => _then(v as FetchProfileData));

  @override
  FetchProfileData get _value => super._value as FetchProfileData;
}

/// @nodoc
class _$FetchProfileData
    with DiagnosticableTreeMixin
    implements FetchProfileData {
  const _$FetchProfileData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditProfileEvent.fetchProfileData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditProfileEvent.fetchProfileData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchProfileData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchProfileData(),
    @required
        Result updateProfileData(
            @nullable String avatarPath,
            @nullable String username,
            @nullable String fullname,
            @nullable String bio),
    @required Result logout(),
  }) {
    assert(fetchProfileData != null);
    assert(updateProfileData != null);
    assert(logout != null);
    return fetchProfileData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchProfileData(),
    Result updateProfileData(
        @nullable String avatarPath,
        @nullable String username,
        @nullable String fullname,
        @nullable String bio),
    Result logout(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchProfileData != null) {
      return fetchProfileData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchProfileData(FetchProfileData value),
    @required Result updateProfileData(UpdateProfileData value),
    @required Result logout(Logout value),
  }) {
    assert(fetchProfileData != null);
    assert(updateProfileData != null);
    assert(logout != null);
    return fetchProfileData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchProfileData(FetchProfileData value),
    Result updateProfileData(UpdateProfileData value),
    Result logout(Logout value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchProfileData != null) {
      return fetchProfileData(this);
    }
    return orElse();
  }
}

abstract class FetchProfileData implements EditProfileEvent {
  const factory FetchProfileData() = _$FetchProfileData;
}

/// @nodoc
abstract class $UpdateProfileDataCopyWith<$Res> {
  factory $UpdateProfileDataCopyWith(
          UpdateProfileData value, $Res Function(UpdateProfileData) then) =
      _$UpdateProfileDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable String avatarPath,
      @nullable String username,
      @nullable String fullname,
      @nullable String bio});
}

/// @nodoc
class _$UpdateProfileDataCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $UpdateProfileDataCopyWith<$Res> {
  _$UpdateProfileDataCopyWithImpl(
      UpdateProfileData _value, $Res Function(UpdateProfileData) _then)
      : super(_value, (v) => _then(v as UpdateProfileData));

  @override
  UpdateProfileData get _value => super._value as UpdateProfileData;

  @override
  $Res call({
    Object avatarPath = freezed,
    Object username = freezed,
    Object fullname = freezed,
    Object bio = freezed,
  }) {
    return _then(UpdateProfileData(
      avatarPath:
          avatarPath == freezed ? _value.avatarPath : avatarPath as String,
      username: username == freezed ? _value.username : username as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      bio: bio == freezed ? _value.bio : bio as String,
    ));
  }
}

/// @nodoc
class _$UpdateProfileData
    with DiagnosticableTreeMixin
    implements UpdateProfileData {
  const _$UpdateProfileData(
      {@nullable this.avatarPath,
      @nullable this.username,
      @nullable this.fullname,
      @nullable this.bio});

  @override
  @nullable
  final String avatarPath;
  @override
  @nullable
  final String username;
  @override
  @nullable
  final String fullname;
  @override
  @nullable
  final String bio;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditProfileEvent.updateProfileData(avatarPath: $avatarPath, username: $username, fullname: $fullname, bio: $bio)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditProfileEvent.updateProfileData'))
      ..add(DiagnosticsProperty('avatarPath', avatarPath))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('bio', bio));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProfileData &&
            (identical(other.avatarPath, avatarPath) ||
                const DeepCollectionEquality()
                    .equals(other.avatarPath, avatarPath)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatarPath) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(bio);

  @override
  $UpdateProfileDataCopyWith<UpdateProfileData> get copyWith =>
      _$UpdateProfileDataCopyWithImpl<UpdateProfileData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchProfileData(),
    @required
        Result updateProfileData(
            @nullable String avatarPath,
            @nullable String username,
            @nullable String fullname,
            @nullable String bio),
    @required Result logout(),
  }) {
    assert(fetchProfileData != null);
    assert(updateProfileData != null);
    assert(logout != null);
    return updateProfileData(avatarPath, username, fullname, bio);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchProfileData(),
    Result updateProfileData(
        @nullable String avatarPath,
        @nullable String username,
        @nullable String fullname,
        @nullable String bio),
    Result logout(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProfileData != null) {
      return updateProfileData(avatarPath, username, fullname, bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchProfileData(FetchProfileData value),
    @required Result updateProfileData(UpdateProfileData value),
    @required Result logout(Logout value),
  }) {
    assert(fetchProfileData != null);
    assert(updateProfileData != null);
    assert(logout != null);
    return updateProfileData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchProfileData(FetchProfileData value),
    Result updateProfileData(UpdateProfileData value),
    Result logout(Logout value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProfileData != null) {
      return updateProfileData(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileData implements EditProfileEvent {
  const factory UpdateProfileData(
      {@nullable String avatarPath,
      @nullable String username,
      @nullable String fullname,
      @nullable String bio}) = _$UpdateProfileData;

  @nullable
  String get avatarPath;
  @nullable
  String get username;
  @nullable
  String get fullname;
  @nullable
  String get bio;
  $UpdateProfileDataCopyWith<UpdateProfileData> get copyWith;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(Logout _value, $Res Function(Logout) _then)
      : super(_value, (v) => _then(v as Logout));

  @override
  Logout get _value => super._value as Logout;
}

/// @nodoc
class _$Logout with DiagnosticableTreeMixin implements Logout {
  const _$Logout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditProfileEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EditProfileEvent.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchProfileData(),
    @required
        Result updateProfileData(
            @nullable String avatarPath,
            @nullable String username,
            @nullable String fullname,
            @nullable String bio),
    @required Result logout(),
  }) {
    assert(fetchProfileData != null);
    assert(updateProfileData != null);
    assert(logout != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchProfileData(),
    Result updateProfileData(
        @nullable String avatarPath,
        @nullable String username,
        @nullable String fullname,
        @nullable String bio),
    Result logout(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchProfileData(FetchProfileData value),
    @required Result updateProfileData(UpdateProfileData value),
    @required Result logout(Logout value),
  }) {
    assert(fetchProfileData != null);
    assert(updateProfileData != null);
    assert(logout != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchProfileData(FetchProfileData value),
    Result updateProfileData(UpdateProfileData value),
    Result logout(Logout value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements EditProfileEvent {
  const factory Logout() = _$Logout;
}
