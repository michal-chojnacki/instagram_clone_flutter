// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawContent> _$rawContentSerializer = new _$RawContentSerializer();

class _$RawContentSerializer implements StructuredSerializer<RawContent> {
  @override
  final Iterable<Type> types = const [RawContent, _$RawContent];
  @override
  final String wireName = 'RawContent';

  @override
  Iterable<Object> serialize(Serializers serializers, RawContent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(RawImage)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(RawUser)));
    }
    if (object.publicationTimestamp != null) {
      result
        ..add('publicationTimestamp')
        ..add(serializers.serialize(object.publicationTimestamp,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RawContent deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawContentBuilder();

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
        case 'image':
          result.image.replace(serializers.deserialize(value,
              specifiedType: const FullType(RawImage)) as RawImage);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(RawUser)) as RawUser);
          break;
        case 'publicationTimestamp':
          result.publicationTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RawContent extends RawContent {
  @override
  final int id;
  @override
  final RawImage image;
  @override
  final String description;
  @override
  final RawUser owner;
  @override
  final int publicationTimestamp;

  factory _$RawContent([void Function(RawContentBuilder) updates]) =>
      (new RawContentBuilder()..update(updates)).build();

  _$RawContent._(
      {this.id,
      this.image,
      this.description,
      this.owner,
      this.publicationTimestamp})
      : super._();

  @override
  RawContent rebuild(void Function(RawContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawContentBuilder toBuilder() => new RawContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawContent &&
        id == other.id &&
        image == other.image &&
        description == other.description &&
        owner == other.owner &&
        publicationTimestamp == other.publicationTimestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), image.hashCode), description.hashCode),
            owner.hashCode),
        publicationTimestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawContent')
          ..add('id', id)
          ..add('image', image)
          ..add('description', description)
          ..add('owner', owner)
          ..add('publicationTimestamp', publicationTimestamp))
        .toString();
  }
}

class RawContentBuilder implements Builder<RawContent, RawContentBuilder> {
  _$RawContent _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RawImageBuilder _image;
  RawImageBuilder get image => _$this._image ??= new RawImageBuilder();
  set image(RawImageBuilder image) => _$this._image = image;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  RawUserBuilder _owner;
  RawUserBuilder get owner => _$this._owner ??= new RawUserBuilder();
  set owner(RawUserBuilder owner) => _$this._owner = owner;

  int _publicationTimestamp;
  int get publicationTimestamp => _$this._publicationTimestamp;
  set publicationTimestamp(int publicationTimestamp) =>
      _$this._publicationTimestamp = publicationTimestamp;

  RawContentBuilder();

  RawContentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _image = _$v.image?.toBuilder();
      _description = _$v.description;
      _owner = _$v.owner?.toBuilder();
      _publicationTimestamp = _$v.publicationTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawContent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawContent;
  }

  @override
  void update(void Function(RawContentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawContent build() {
    _$RawContent _$result;
    try {
      _$result = _$v ??
          new _$RawContent._(
              id: id,
              image: _image?.build(),
              description: description,
              owner: _owner?.build(),
              publicationTimestamp: publicationTimestamp);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();

        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RawContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
