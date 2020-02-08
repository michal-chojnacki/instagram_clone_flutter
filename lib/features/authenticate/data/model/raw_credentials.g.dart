// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawCredentials> _$rawCredentialsSerializer =
    new _$RawCredentialsSerializer();

class _$RawCredentialsSerializer
    implements StructuredSerializer<RawCredentials> {
  @override
  final Iterable<Type> types = const [RawCredentials, _$RawCredentials];
  @override
  final String wireName = 'RawCredentials';

  @override
  Iterable<Object> serialize(Serializers serializers, RawCredentials object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RawCredentials deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawCredentialsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RawCredentials extends RawCredentials {
  @override
  final String username;
  @override
  final String password;

  factory _$RawCredentials([void Function(RawCredentialsBuilder) updates]) =>
      (new RawCredentialsBuilder()..update(updates)).build();

  _$RawCredentials._({this.username, this.password}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('RawCredentials', 'username');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('RawCredentials', 'password');
    }
  }

  @override
  RawCredentials rebuild(void Function(RawCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawCredentialsBuilder toBuilder() =>
      new RawCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawCredentials &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawCredentials')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class RawCredentialsBuilder
    implements Builder<RawCredentials, RawCredentialsBuilder> {
  _$RawCredentials _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  RawCredentialsBuilder();

  RawCredentialsBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawCredentials other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawCredentials;
  }

  @override
  void update(void Function(RawCredentialsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawCredentials build() {
    final _$result =
        _$v ?? new _$RawCredentials._(username: username, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
