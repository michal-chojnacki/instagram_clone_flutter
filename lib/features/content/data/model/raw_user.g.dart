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
  final RawImage avatar;

  factory _$RawUser([void Function(RawUserBuilder) updates]) =>
      (new RawUserBuilder()..update(updates)).build();

  _$RawUser._({this.id, this.username, this.avatar}) : super._();

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
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), username.hashCode), avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawUser')
          ..add('id', id)
          ..add('username', username)
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

  RawImageBuilder _avatar;
  RawImageBuilder get avatar => _$this._avatar ??= new RawImageBuilder();
  set avatar(RawImageBuilder avatar) => _$this._avatar = avatar;

  RawUserBuilder();

  RawUserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
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
          new _$RawUser._(id: id, username: username, avatar: _avatar?.build());
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
