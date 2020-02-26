// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Content extends Content {
  @override
  final int id;
  @override
  final Image image;
  @override
  final String description;
  @override
  final User owner;
  @override
  final int publicationTimestamp;

  factory _$Content([void Function(ContentBuilder) updates]) =>
      (new ContentBuilder()..update(updates)).build();

  _$Content._(
      {this.id,
      this.image,
      this.description,
      this.owner,
      this.publicationTimestamp})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Content', 'id');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('Content', 'image');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Content', 'description');
    }
    if (owner == null) {
      throw new BuiltValueNullFieldError('Content', 'owner');
    }
    if (publicationTimestamp == null) {
      throw new BuiltValueNullFieldError('Content', 'publicationTimestamp');
    }
  }

  @override
  Content rebuild(void Function(ContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentBuilder toBuilder() => new ContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Content &&
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
}

class ContentBuilder implements Builder<Content, ContentBuilder> {
  _$Content _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ImageBuilder _image;
  ImageBuilder get image => _$this._image ??= new ImageBuilder();
  set image(ImageBuilder image) => _$this._image = image;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  UserBuilder _owner;
  UserBuilder get owner => _$this._owner ??= new UserBuilder();
  set owner(UserBuilder owner) => _$this._owner = owner;

  int _publicationTimestamp;
  int get publicationTimestamp => _$this._publicationTimestamp;
  set publicationTimestamp(int publicationTimestamp) =>
      _$this._publicationTimestamp = publicationTimestamp;

  ContentBuilder();

  ContentBuilder get _$this {
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
  void replace(Content other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Content;
  }

  @override
  void update(void Function(ContentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Content build() {
    _$Content _$result;
    try {
      _$result = _$v ??
          new _$Content._(
              id: id,
              image: image.build(),
              description: description,
              owner: owner.build(),
              publicationTimestamp: publicationTimestamp);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'image';
        image.build();

        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Content', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
