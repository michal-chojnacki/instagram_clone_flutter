// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required int id,
      @required String username,
      @required String fullname,
      @required String bio,
      @required int posts,
      @required int followers,
      @required int followees,
      @required Image avatar}) {
    return _User(
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
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id;
  String get username;
  String get fullname;
  String get bio;
  int get posts;
  int get followers;
  int get followees;
  Image get avatar;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String fullname,
      String bio,
      int posts,
      int followers,
      int followees,
      Image avatar});

  $ImageCopyWith<$Res> get avatar;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

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
      avatar: avatar == freezed ? _value.avatar : avatar as Image,
    ));
  }

  @override
  $ImageCopyWith<$Res> get avatar {
    if (_value.avatar == null) {
      return null;
    }
    return $ImageCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String fullname,
      String bio,
      int posts,
      int followers,
      int followees,
      Image avatar});

  @override
  $ImageCopyWith<$Res> get avatar;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

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
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      bio: bio == freezed ? _value.bio : bio as String,
      posts: posts == freezed ? _value.posts : posts as int,
      followers: followers == freezed ? _value.followers : followers as int,
      followees: followees == freezed ? _value.followees : followees as int,
      avatar: avatar == freezed ? _value.avatar : avatar as Image,
    ));
  }
}

/// @nodoc
class _$_User with DiagnosticableTreeMixin implements _User {
  _$_User(
      {@required this.id,
      @required this.username,
      @required this.fullname,
      @required this.bio,
      @required this.posts,
      @required this.followers,
      @required this.followees,
      @required this.avatar})
      : assert(id != null),
        assert(username != null),
        assert(fullname != null),
        assert(bio != null),
        assert(posts != null),
        assert(followers != null),
        assert(followees != null),
        assert(avatar != null);

  @override
  final int id;
  @override
  final String username;
  @override
  final String fullname;
  @override
  final String bio;
  @override
  final int posts;
  @override
  final int followers;
  @override
  final int followees;
  @override
  final Image avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, username: $username, fullname: $fullname, bio: $bio, posts: $posts, followers: $followers, followees: $followees, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
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
        (other is _User &&
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
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  factory _User(
      {@required int id,
      @required String username,
      @required String fullname,
      @required String bio,
      @required int posts,
      @required int followers,
      @required int followees,
      @required Image avatar}) = _$_User;

  @override
  int get id;
  @override
  String get username;
  @override
  String get fullname;
  @override
  String get bio;
  @override
  int get posts;
  @override
  int get followers;
  @override
  int get followees;
  @override
  Image get avatar;
  @override
  _$UserCopyWith<_User> get copyWith;
}
