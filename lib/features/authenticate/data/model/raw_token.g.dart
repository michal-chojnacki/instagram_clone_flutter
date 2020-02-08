// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawToken> _$rawTokenSerializer = new _$RawTokenSerializer();

class _$RawTokenSerializer implements StructuredSerializer<RawToken> {
  @override
  final Iterable<Type> types = const [RawToken, _$RawToken];
  @override
  final String wireName = 'RawToken';

  @override
  Iterable<Object> serialize(Serializers serializers, RawToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RawToken deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RawToken extends RawToken {
  @override
  final String token;

  factory _$RawToken([void Function(RawTokenBuilder) updates]) =>
      (new RawTokenBuilder()..update(updates)).build();

  _$RawToken._({this.token}) : super._();

  @override
  RawToken rebuild(void Function(RawTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawTokenBuilder toBuilder() => new RawTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawToken && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawToken')..add('token', token))
        .toString();
  }
}

class RawTokenBuilder implements Builder<RawToken, RawTokenBuilder> {
  _$RawToken _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  RawTokenBuilder();

  RawTokenBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawToken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawToken;
  }

  @override
  void update(void Function(RawTokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawToken build() {
    final _$result = _$v ?? new _$RawToken._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
