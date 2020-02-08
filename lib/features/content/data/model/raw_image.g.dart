// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawImage> _$rawImageSerializer = new _$RawImageSerializer();

class _$RawImageSerializer implements StructuredSerializer<RawImage> {
  @override
  final Iterable<Type> types = const [RawImage, _$RawImage];
  @override
  final String wireName = 'RawImage';

  @override
  Iterable<Object> serialize(Serializers serializers, RawImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RawImage deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RawImage extends RawImage {
  @override
  final String url;

  factory _$RawImage([void Function(RawImageBuilder) updates]) =>
      (new RawImageBuilder()..update(updates)).build();

  _$RawImage._({this.url}) : super._();

  @override
  RawImage rebuild(void Function(RawImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawImageBuilder toBuilder() => new RawImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawImage && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(0, url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawImage')..add('url', url))
        .toString();
  }
}

class RawImageBuilder implements Builder<RawImage, RawImageBuilder> {
  _$RawImage _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  RawImageBuilder();

  RawImageBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawImage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawImage;
  }

  @override
  void update(void Function(RawImageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawImage build() {
    final _$result = _$v ?? new _$RawImage._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
