// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawUser> _$rawUserSerializer = new _$RawUserSerializer();

class _$RawUserSerializer implements StructuredSerializer<RawUser> {
  @override
  final Iterable<Type> types = const [RawUser, _$RawUser];
  @override
  final String wireName = 'RawUser';

  @override
  Iterable<Object> serialize(Serializers serializers, RawUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.fullname != null) {
      result
        ..add('fullname')
        ..add(serializers.serialize(object.fullname,
            specifiedType: const FullType(String)));
    }
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }
    if (object.posts != null) {
      result
        ..add('posts')
        ..add(serializers.serialize(object.posts,
            specifiedType: const FullType(int)));
    }
    if (object.followers != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(object.followers,
            specifiedType: const FullType(int)));
    }
    if (object.followees != null) {
      result
        ..add('followees')
        ..add(serializers.serialize(object.followees,
            specifiedType: const FullType(int)));
    }
    if (object.avatar != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(object.avatar,
            specifiedType: const FullType(RawImage)));
    }
    return result;
  }

  @override
  RawUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'posts':
          result.posts = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'followers':
          result.followers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'followees':
          result.followees = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
              specifiedType: const FullType(RawImage)) as RawImage);
          break;
      }
    }

    return result.build();
  }
}

class _$RawUser extends RawUser {
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
  final RawImage avatar;

  factory _$RawUser([void Function(RawUserBuilder) updates]) =>
      (new RawUserBuilder()..update(updates)).build();

  _$RawUser._(
      {this.id,
      this.username,
      this.fullname,
      this.bio,
      this.posts,
      this.followers,
      this.followees,
      this.avatar})
      : super._();

  @override
  RawUser rebuild(void Function(RawUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawUserBuilder toBuilder() => new RawUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawUser &&
        id == other.id &&
        username == other.username &&
        fullname == other.fullname &&
        bio == other.bio &&
        posts == other.posts &&
        followers == other.followers &&
        followees == other.followees &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), username.hashCode),
                            fullname.hashCode),
                        bio.hashCode),
                    posts.hashCode),
                followers.hashCode),
            followees.hashCode),
        avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawUser')
          ..add('id', id)
          ..add('username', username)
          ..add('fullname', fullname)
          ..add('bio', bio)
          ..add('posts', posts)
          ..add('followers', followers)
          ..add('followees', followees)
          ..add('avatar', avatar))
        .toString();
  }
}

class RawUserBuilder implements Builder<RawUser, RawUserBuilder> {
  _$RawUser _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _fullname;
  String get fullname => _$this._fullname;
  set fullname(String fullname) => _$this._fullname = fullname;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  int _posts;
  int get posts => _$this._posts;
  set posts(int posts) => _$this._posts = posts;

  int _followers;
  int get followers => _$this._followers;
  set followers(int followers) => _$this._followers = followers;

  int _followees;
  int get followees => _$this._followees;
  set followees(int followees) => _$this._followees = followees;

  RawImageBuilder _avatar;
  RawImageBuilder get avatar => _$this._avatar ??= new RawImageBuilder();
  set avatar(RawImageBuilder avatar) => _$this._avatar = avatar;

  RawUserBuilder();

  RawUserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
      _fullname = _$v.fullname;
      _bio = _$v.bio;
      _posts = _$v.posts;
      _followers = _$v.followers;
      _followees = _$v.followees;
      _avatar = _$v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawUser;
  }

  @override
  void update(void Function(RawUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawUser build() {
    _$RawUser _$result;
    try {
      _$result = _$v ??
          new _$RawUser._(
              id: id,
              username: username,
              fullname: fullname,
              bio: bio,
              posts: posts,
              followers: followers,
              followees: followees,
              avatar: _avatar?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RawUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
