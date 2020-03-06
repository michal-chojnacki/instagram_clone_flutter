// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_observing_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawObservingStatus> _$rawObservingStatusSerializer =
    new _$RawObservingStatusSerializer();

class _$RawObservingStatusSerializer
    implements StructuredSerializer<RawObservingStatus> {
  @override
  final Iterable<Type> types = const [RawObservingStatus, _$RawObservingStatus];
  @override
  final String wireName = 'RawObservingStatus';

  @override
  Iterable<Object> serialize(Serializers serializers, RawObservingStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RawObservingStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawObservingStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RawObservingStatus extends RawObservingStatus {
  @override
  final bool status;
  @override
  final int userId;

  factory _$RawObservingStatus(
          [void Function(RawObservingStatusBuilder) updates]) =>
      (new RawObservingStatusBuilder()..update(updates)).build();

  _$RawObservingStatus._({this.status, this.userId}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('RawObservingStatus', 'status');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('RawObservingStatus', 'userId');
    }
  }

  @override
  RawObservingStatus rebuild(
          void Function(RawObservingStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawObservingStatusBuilder toBuilder() =>
      new RawObservingStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawObservingStatus &&
        status == other.status &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawObservingStatus')
          ..add('status', status)
          ..add('userId', userId))
        .toString();
  }
}

class RawObservingStatusBuilder
    implements Builder<RawObservingStatus, RawObservingStatusBuilder> {
  _$RawObservingStatus _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  RawObservingStatusBuilder();

  RawObservingStatusBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawObservingStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawObservingStatus;
  }

  @override
  void update(void Function(RawObservingStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawObservingStatus build() {
    final _$result =
        _$v ?? new _$RawObservingStatus._(status: status, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
