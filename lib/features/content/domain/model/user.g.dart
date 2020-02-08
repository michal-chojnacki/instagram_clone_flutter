// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String username;
  @override
  final Image avatar;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.username, this.avatar}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('User', 'username');
    }
    if (avatar == null) {
      throw new BuiltValueNullFieldError('User', 'avatar');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        username == other.username &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), avatar.hashCode));
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  ImageBuilder _avatar;
  ImageBuilder get avatar => _$this._avatar ??= new ImageBuilder();
  set avatar(ImageBuilder avatar) => _$this._avatar = avatar;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _avatar = _$v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result =
          _$v ?? new _$User._(username: username, avatar: avatar.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'avatar';
        avatar.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
