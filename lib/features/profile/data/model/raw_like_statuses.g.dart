// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_like_statuses.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawLikeStatuses> _$rawLikeStatusesSerializer =
    new _$RawLikeStatusesSerializer();

class _$RawLikeStatusesSerializer
    implements StructuredSerializer<RawLikeStatuses> {
  @override
  final Iterable<Type> types = const [RawLikeStatuses, _$RawLikeStatuses];
  @override
  final String wireName = 'RawLikeStatuses';

  @override
  Iterable<Object> serialize(Serializers serializers, RawLikeStatuses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'statuses',
      serializers.serialize(object.statuses,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(int), const FullType(bool)])),
    ];

    return result;
  }

  @override
  RawLikeStatuses deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawLikeStatusesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'statuses':
          result.statuses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(int), const FullType(bool)])));
          break;
      }
    }

    return result.build();
  }
}

class _$RawLikeStatuses extends RawLikeStatuses {
  @override
  final BuiltMap<int, bool> statuses;

  factory _$RawLikeStatuses([void Function(RawLikeStatusesBuilder) updates]) =>
      (new RawLikeStatusesBuilder()..update(updates)).build();

  _$RawLikeStatuses._({this.statuses}) : super._() {
    if (statuses == null) {
      throw new BuiltValueNullFieldError('RawLikeStatuses', 'statuses');
    }
  }

  @override
  RawLikeStatuses rebuild(void Function(RawLikeStatusesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawLikeStatusesBuilder toBuilder() =>
      new RawLikeStatusesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawLikeStatuses && statuses == other.statuses;
  }

  @override
  int get hashCode {
    return $jf($jc(0, statuses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawLikeStatuses')
          ..add('statuses', statuses))
        .toString();
  }
}

class RawLikeStatusesBuilder
    implements Builder<RawLikeStatuses, RawLikeStatusesBuilder> {
  _$RawLikeStatuses _$v;

  MapBuilder<int, bool> _statuses;
  MapBuilder<int, bool> get statuses =>
      _$this._statuses ??= new MapBuilder<int, bool>();
  set statuses(MapBuilder<int, bool> statuses) => _$this._statuses = statuses;

  RawLikeStatusesBuilder();

  RawLikeStatusesBuilder get _$this {
    if (_$v != null) {
      _statuses = _$v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawLikeStatuses other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawLikeStatuses;
  }

  @override
  void update(void Function(RawLikeStatusesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawLikeStatuses build() {
    _$RawLikeStatuses _$result;
    try {
      _$result = _$v ?? new _$RawLikeStatuses._(statuses: statuses.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'statuses';
        statuses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RawLikeStatuses', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
