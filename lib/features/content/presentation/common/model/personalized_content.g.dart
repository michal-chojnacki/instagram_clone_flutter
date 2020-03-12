// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalized_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PersonalizedContent extends PersonalizedContent {
  @override
  final bool liked;
  @override
  final Content content;

  factory _$PersonalizedContent(
          [void Function(PersonalizedContentBuilder) updates]) =>
      (new PersonalizedContentBuilder()..update(updates)).build();

  _$PersonalizedContent._({this.liked, this.content}) : super._() {
    if (liked == null) {
      throw new BuiltValueNullFieldError('PersonalizedContent', 'liked');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('PersonalizedContent', 'content');
    }
  }

  @override
  PersonalizedContent rebuild(
          void Function(PersonalizedContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonalizedContentBuilder toBuilder() =>
      new PersonalizedContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonalizedContent &&
        liked == other.liked &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, liked.hashCode), content.hashCode));
  }
}

class PersonalizedContentBuilder
    implements Builder<PersonalizedContent, PersonalizedContentBuilder> {
  _$PersonalizedContent _$v;

  bool _liked;
  bool get liked => _$this._liked;
  set liked(bool liked) => _$this._liked = liked;

  ContentBuilder _content;
  ContentBuilder get content => _$this._content ??= new ContentBuilder();
  set content(ContentBuilder content) => _$this._content = content;

  PersonalizedContentBuilder();

  PersonalizedContentBuilder get _$this {
    if (_$v != null) {
      _liked = _$v.liked;
      _content = _$v.content?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonalizedContent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PersonalizedContent;
  }

  @override
  void update(void Function(PersonalizedContentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PersonalizedContent build() {
    _$PersonalizedContent _$result;
    try {
      _$result = _$v ??
          new _$PersonalizedContent._(liked: liked, content: content.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'content';
        content.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PersonalizedContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
