// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_like_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawLikeStatus> _$rawLikeStatusSerializer =
    new _$RawLikeStatusSerializer();

class _$RawLikeStatusSerializer implements StructuredSerializer<RawLikeStatus> {
  @override
  final Iterable<Type> types = const [RawLikeStatus, _$RawLikeStatus];
  @override
  final String wireName = 'RawLikeStatus';

  @override
  Iterable<Object> serialize(Serializers serializers, RawLikeStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'contentId',
      serializers.serialize(object.contentId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RawLikeStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawLikeStatusBuilder();

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
        case 'contentId':
          result.contentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RawLikeStatus extends RawLikeStatus {
  @override
  final bool status;
  @override
  final int contentId;

  factory _$RawLikeStatus([void Function(RawLikeStatusBuilder) updates]) =>
      (new RawLikeStatusBuilder()..update(updates)).build();

  _$RawLikeStatus._({this.status, this.contentId}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('RawLikeStatus', 'status');
    }
    if (contentId == null) {
      throw new BuiltValueNullFieldError('RawLikeStatus', 'contentId');
    }
  }

  @override
  RawLikeStatus rebuild(void Function(RawLikeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawLikeStatusBuilder toBuilder() => new RawLikeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawLikeStatus &&
        status == other.status &&
        contentId == other.contentId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), contentId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawLikeStatus')
          ..add('status', status)
          ..add('contentId', contentId))
        .toString();
  }
}

class RawLikeStatusBuilder
    implements Builder<RawLikeStatus, RawLikeStatusBuilder> {
  _$RawLikeStatus _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  int _contentId;
  int get contentId => _$this._contentId;
  set contentId(int contentId) => _$this._contentId = contentId;

  RawLikeStatusBuilder();

  RawLikeStatusBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _contentId = _$v.contentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawLikeStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawLikeStatus;
  }

  @override
  void update(void Function(RawLikeStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawLikeStatus build() {
    final _$result =
        _$v ?? new _$RawLikeStatus._(status: status, contentId: contentId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
