// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawUser _$RawUserFromJson(Map<String, dynamic> json) {
  return _RawUser.fromJson(json);
}

/// @nodoc
class _$RawUserTearOff {
  const _$RawUserTearOff();

// ignore: unused_element
  _RawUser call(
      {@nullable int id,
      @nullable String username,
      @nullable String fullname,
      @nullable String bio,
      @nullable int posts,
      @nullable int followers,
      @nullable int followees,
      @nullable RawImage avatar}) {
    return _RawUser(
      id: id,
      username: username,
      fullname: fullname,
      bio: bio,
      posts: posts,
      followers: followers,
      followees: followees,
      avatar: avatar,
    );
  }

// ignore: unused_element
  RawUser fromJson(Map<String, Object> json) {
    return RawUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawUser = _$RawUserTearOff();

/// @nodoc
mixin _$RawUser {
  @nullable
  int get id;
  @nullable
  String get username;
  @nullable
  String get fullname;
  @nullable
  String get bio;
  @nullable
  int get posts;
  @nullable
  int get followers;
  @nullable
  int get followees;
  @nullable
  RawImage get avatar;

  Map<String, dynamic> toJson();
  $RawUserCopyWith<RawUser> get copyWith;
}

/// @nodoc
abstract class $RawUserCopyWith<$Res> {
  factory $RawUserCopyWith(RawUser value, $Res Function(RawUser) then) =
      _$RawUserCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @nullable String username,
      @nullable String fullname,
      @nullable String bio,
      @nullable int posts,
      @nullable int followers,
      @nullable int followees,
      @nullable RawImage avatar});

  $RawImageCopyWith<$Res> get avatar;
}

/// @nodoc
class _$RawUserCopyWithImpl<$Res> implements $RawUserCopyWith<$Res> {
  _$RawUserCopyWithImpl(this._value, this._then);

  final RawUser _value;
  // ignore: unused_field
  final $Res Function(RawUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object fullname = freezed,
    Object bio = freezed,
    Object posts = freezed,
    Object followers = freezed,
    Object followees = freezed,
    Object avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      bio: bio == freezed ? _value.bio : bio as String,
      posts: posts == freezed ? _value.posts : posts as int,
      followers: followers == freezed ? _value.followers : followers as int,
      followees: followees == freezed ? _value.followees : followees as int,
      avatar: avatar == freezed ? _value.avatar : avatar as RawImage,
    ));
  }

  @override
  $RawImageCopyWith<$Res> get avatar {
    if (_value.avatar == null) {
      return null;
    }
    return $RawImageCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }
}

/// @nodoc
abstract class _$RawUserCopyWith<$Res> implements $RawUserCopyWith<$Res> {
  factory _$RawUserCopyWith(_RawUser value, $Res Function(_RawUser) then) =
      __$RawUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @nullable String username,
      @nullable String fullname,
      @nullable String bio,
      @nullable int posts,
      @nullable int followers,
      @nullable int followees,
      @nullable RawImage avatar});

  @override
  $RawImageCopyWith<$Res> get avatar;
}

/// @nodoc
class __$RawUserCopyWithImpl<$Res> extends _$RawUserCopyWithImpl<$Res>
    implements _$RawUserCopyWith<$Res> {
  __$RawUserCopyWithImpl(_RawUser _value, $Res Function(_RawUser) _then)
      : super(_value, (v) => _then(v as _RawUser));

  @override
  _RawUser get _value => super._value as _RawUser;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object fullname = freezed,
    Object bio = freezed,
    Object posts = freezed,
    Object followers = freezed,
    Object followees = freezed,
    Object avatar = freezed,
  }) {
    return _then(_RawUser(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      bio: bio == freezed ? _value.bio : bio as String,
      posts: posts == freezed ? _value.posts : posts as int,
      followers: followers == freezed ? _value.followers : followers as int,
      followees: followees == freezed ? _value.followees : followees as int,
      avatar: avatar == freezed ? _value.avatar : avatar as RawImage,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawUser with DiagnosticableTreeMixin implements _RawUser {
  _$_RawUser(
      {@nullable this.id,
      @nullable this.username,
      @nullable this.fullname,
      @nullable this.bio,
      @nullable this.posts,
      @nullable this.followers,
      @nullable this.followees,
      @nullable this.avatar});

  factory _$_RawUser.fromJson(Map<String, dynamic> json) =>
      _$_$_RawUserFromJson(json);

  @override
  @nullable
  final int id;
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
  @nullable
  final int posts;
  @override
  @nullable
  final int followers;
  @override
  @nullable
  final int followees;
  @override
  @nullable
  final RawImage avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawUser(id: $id, username: $username, fullname: $fullname, bio: $bio, posts: $posts, followers: $followers, followees: $followees, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('followers', followers))
      ..add(DiagnosticsProperty('followees', followees))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.followees, followees) ||
                const DeepCollectionEquality()
                    .equals(other.followees, followees)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(followees) ^
      const DeepCollectionEquality().hash(avatar);

  @override
  _$RawUserCopyWith<_RawUser> get copyWith =>
      __$RawUserCopyWithImpl<_RawUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawUserToJson(this);
  }
}

abstract class _RawUser implements RawUser {
  factory _RawUser(
      {@nullable int id,
      @nullable String username,
      @nullable String fullname,
      @nullable String bio,
      @nullable int posts,
      @nullable int followers,
      @nullable int followees,
      @nullable RawImage avatar}) = _$_RawUser;

  factory _RawUser.fromJson(Map<String, dynamic> json) = _$_RawUser.fromJson;

  @override
  @nullable
  int get id;
  @override
  @nullable
  String get username;
  @override
  @nullable
  String get fullname;
  @override
  @nullable
  String get bio;
  @override
  @nullable
  int get posts;
  @override
  @nullable
  int get followers;
  @override
  @nullable
  int get followees;
  @override
  @nullable
  RawImage get avatar;
  @override
  _$RawUserCopyWith<_RawUser> get copyWith;
}
