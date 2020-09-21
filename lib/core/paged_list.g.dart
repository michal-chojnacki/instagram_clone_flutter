// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PagedList<Object>> _$pagedListSerializer =
    new _$PagedListSerializer();

class _$PagedListSerializer implements StructuredSerializer<PagedList<Object>> {
  @override
  final Iterable<Type> types = const [PagedList, _$PagedList];
  @override
  final String wireName = 'PagedList';

  @override
  Iterable<Object> serialize(Serializers serializers, PagedList<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'list',
      serializers.serialize(object.list,
          specifiedType: new FullType(BuiltList, [parameterT])),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'pages',
      serializers.serialize(object.pages, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  PagedList<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new PagedListBuilder<Object>()
        : serializers.newBuilder(specifiedType) as PagedListBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterT]))
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

class _$PagedList<T> extends PagedList<T> {
  @override
  final BuiltList<T> list;
  @override
  final int page;
  @override
  final int pages;

  factory _$PagedList([void Function(PagedListBuilder<T>) updates]) =>
      (new PagedListBuilder<T>()..update(updates)).build();

  _$PagedList._({this.list, this.page, this.pages}) : super._() {
    if (list == null) {
      throw new BuiltValueNullFieldError('PagedList', 'list');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('PagedList', 'page');
    }
    if (pages == null) {
      throw new BuiltValueNullFieldError('PagedList', 'pages');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('PagedList', 'T');
    }
  }

  @override
  PagedList<T> rebuild(void Function(PagedListBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PagedListBuilder<T> toBuilder() => new PagedListBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PagedList &&
        list == other.list &&
        page == other.page &&
        pages == other.pages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, list.hashCode), page.hashCode), pages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PagedList')
          ..add('list', list)
          ..add('page', page)
          ..add('pages', pages))
        .toString();
  }
}

class PagedListBuilder<T>
    implements Builder<PagedList<T>, PagedListBuilder<T>> {
  _$PagedList<T> _$v;

  ListBuilder<T> _list;
  ListBuilder<T> get list => _$this._list ??= new ListBuilder<T>();
  set list(ListBuilder<T> list) => _$this._list = list;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _pages;
  int get pages => _$this._pages;
  set pages(int pages) => _$this._pages = pages;

  PagedListBuilder();

  PagedListBuilder<T> get _$this {
    if (_$v != null) {
      _list = _$v.list?.toBuilder();
      _page = _$v.page;
      _pages = _$v.pages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PagedList<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PagedList<T>;
  }

  @override
  void update(void Function(PagedListBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PagedList<T> build() {
    _$PagedList<T> _$result;
    try {
      _$result = _$v ??
          new _$PagedList<T>._(list: list.build(), page: page, pages: pages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PagedList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
