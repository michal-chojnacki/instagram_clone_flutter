// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_contents.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawContents> _$rawContentsSerializer = new _$RawContentsSerializer();

class _$RawContentsSerializer implements StructuredSerializer<RawContents> {
  @override
  final Iterable<Type> types = const [RawContents, _$RawContents];
  @override
  final String wireName = 'RawContents';

  @override
  Iterable<Object> serialize(Serializers serializers, RawContents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(object.contents,
            specifiedType:
                const FullType(BuiltList, const [const FullType(RawContent)])));
    }
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
            specifiedType: const FullType(int)));
    }
    if (object.pages != null) {
      result
        ..add('pages')
        ..add(serializers.serialize(object.pages,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RawContents deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawContentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contents':
          result.contents.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RawContent)]))
              as BuiltList<Object>);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pages':
          result.pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RawContents extends RawContents {
  @override
  final BuiltList<RawContent> contents;
  @override
  final int page;
  @override
  final int pages;

  factory _$RawContents([void Function(RawContentsBuilder) updates]) =>
      (new RawContentsBuilder()..update(updates)).build();

  _$RawContents._({this.contents, this.page, this.pages}) : super._();

  @override
  RawContents rebuild(void Function(RawContentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawContentsBuilder toBuilder() => new RawContentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawContents &&
        contents == other.contents &&
        page == other.page &&
        pages == other.pages;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, contents.hashCode), page.hashCode), pages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawContents')
          ..add('contents', contents)
          ..add('page', page)
          ..add('pages', pages))
        .toString();
  }
}

class RawContentsBuilder implements Builder<RawContents, RawContentsBuilder> {
  _$RawContents _$v;

  ListBuilder<RawContent> _contents;
  ListBuilder<RawContent> get contents =>
      _$this._contents ??= new ListBuilder<RawContent>();
  set contents(ListBuilder<RawContent> contents) => _$this._contents = contents;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _pages;
  int get pages => _$this._pages;
  set pages(int pages) => _$this._pages = pages;

  RawContentsBuilder();

  RawContentsBuilder get _$this {
    if (_$v != null) {
      _contents = _$v.contents?.toBuilder();
      _page = _$v.page;
      _pages = _$v.pages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawContents other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawContents;
  }

  @override
  void update(void Function(RawContentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawContents build() {
    _$RawContents _$result;
    try {
      _$result = _$v ??
          new _$RawContents._(
              contents: _contents?.build(), page: page, pages: pages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contents';
        _contents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RawContents', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
