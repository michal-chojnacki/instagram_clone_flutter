// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_recommended_users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawRecommendedUsers> _$rawRecommendedUsersSerializer =
    new _$RawRecommendedUsersSerializer();

class _$RawRecommendedUsersSerializer
    implements StructuredSerializer<RawRecommendedUsers> {
  @override
  final Iterable<Type> types = const [
    RawRecommendedUsers,
    _$RawRecommendedUsers
  ];
  @override
  final String wireName = 'RawRecommendedUsers';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RawRecommendedUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'recommendations',
      serializers.serialize(object.recommendations,
          specifiedType:
              const FullType(BuiltList, const [const FullType(RawUser)])),
    ];

    return result;
  }

  @override
  RawRecommendedUsers deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawRecommendedUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'recommendations':
          result.recommendations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RawUser)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$RawRecommendedUsers extends RawRecommendedUsers {
  @override
  final BuiltList<RawUser> recommendations;

  factory _$RawRecommendedUsers(
          [void Function(RawRecommendedUsersBuilder) updates]) =>
      (new RawRecommendedUsersBuilder()..update(updates)).build();

  _$RawRecommendedUsers._({this.recommendations}) : super._() {
    if (recommendations == null) {
      throw new BuiltValueNullFieldError(
          'RawRecommendedUsers', 'recommendations');
    }
  }

  @override
  RawRecommendedUsers rebuild(
          void Function(RawRecommendedUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawRecommendedUsersBuilder toBuilder() =>
      new RawRecommendedUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawRecommendedUsers &&
        recommendations == other.recommendations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, recommendations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawRecommendedUsers')
          ..add('recommendations', recommendations))
        .toString();
  }
}

class RawRecommendedUsersBuilder
    implements Builder<RawRecommendedUsers, RawRecommendedUsersBuilder> {
  _$RawRecommendedUsers _$v;

  ListBuilder<RawUser> _recommendations;
  ListBuilder<RawUser> get recommendations =>
      _$this._recommendations ??= new ListBuilder<RawUser>();
  set recommendations(ListBuilder<RawUser> recommendations) =>
      _$this._recommendations = recommendations;

  RawRecommendedUsersBuilder();

  RawRecommendedUsersBuilder get _$this {
    if (_$v != null) {
      _recommendations = _$v.recommendations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawRecommendedUsers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawRecommendedUsers;
  }

  @override
  void update(void Function(RawRecommendedUsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawRecommendedUsers build() {
    _$RawRecommendedUsers _$result;
    try {
      _$result = _$v ??
          new _$RawRecommendedUsers._(recommendations: recommendations.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recommendations';
        recommendations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RawRecommendedUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
