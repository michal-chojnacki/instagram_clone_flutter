// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_for_content_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchForContentState extends SearchForContentState {
  @override
  final BuiltList<PersonalizedContent> contents;
  @override
  final int page;
  @override
  final bool hasReachedEndOfResults;

  factory _$SearchForContentState(
          [void Function(SearchForContentStateBuilder) updates]) =>
      (new SearchForContentStateBuilder()..update(updates)).build();

  _$SearchForContentState._(
      {this.contents, this.page, this.hasReachedEndOfResults})
      : super._() {
    if (contents == null) {
      throw new BuiltValueNullFieldError('SearchForContentState', 'contents');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('SearchForContentState', 'page');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'SearchForContentState', 'hasReachedEndOfResults');
    }
  }

  @override
  SearchForContentState rebuild(
          void Function(SearchForContentStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchForContentStateBuilder toBuilder() =>
      new SearchForContentStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchForContentState &&
        contents == other.contents &&
        page == other.page &&
        hasReachedEndOfResults == other.hasReachedEndOfResults;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, contents.hashCode), page.hashCode),
        hasReachedEndOfResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchForContentState')
          ..add('contents', contents)
          ..add('page', page)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults))
        .toString();
  }
}

class SearchForContentStateBuilder
    implements Builder<SearchForContentState, SearchForContentStateBuilder> {
  _$SearchForContentState _$v;

  ListBuilder<PersonalizedContent> _contents;
  ListBuilder<PersonalizedContent> get contents =>
      _$this._contents ??= new ListBuilder<PersonalizedContent>();
  set contents(ListBuilder<PersonalizedContent> contents) =>
      _$this._contents = contents;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  bool _hasReachedEndOfResults;
  bool get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

  SearchForContentStateBuilder();

  SearchForContentStateBuilder get _$this {
    if (_$v != null) {
      _contents = _$v.contents?.toBuilder();
      _page = _$v.page;
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchForContentState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchForContentState;
  }

  @override
  void update(void Function(SearchForContentStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchForContentState build() {
    _$SearchForContentState _$result;
    try {
      _$result = _$v ??
          new _$SearchForContentState._(
              contents: contents.build(),
              page: page,
              hasReachedEndOfResults: hasReachedEndOfResults);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contents';
        contents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchForContentState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
