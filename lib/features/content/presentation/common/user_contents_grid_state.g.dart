// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_contents_grid_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserContentsGridState extends UserContentsGridState {
  @override
  final BuiltList<PersonalizedContent> contents;
  @override
  final int page;
  @override
  final bool hasReachedEndOfResults;

  factory _$UserContentsGridState(
          [void Function(UserContentsGridStateBuilder) updates]) =>
      (new UserContentsGridStateBuilder()..update(updates)).build();

  _$UserContentsGridState._(
      {this.contents, this.page, this.hasReachedEndOfResults})
      : super._() {
    if (contents == null) {
      throw new BuiltValueNullFieldError('UserContentsGridState', 'contents');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('UserContentsGridState', 'page');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'UserContentsGridState', 'hasReachedEndOfResults');
    }
  }

  @override
  UserContentsGridState rebuild(
          void Function(UserContentsGridStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserContentsGridStateBuilder toBuilder() =>
      new UserContentsGridStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserContentsGridState &&
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
    return (newBuiltValueToStringHelper('UserContentsGridState')
          ..add('contents', contents)
          ..add('page', page)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults))
        .toString();
  }
}

class UserContentsGridStateBuilder
    implements Builder<UserContentsGridState, UserContentsGridStateBuilder> {
  _$UserContentsGridState _$v;

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

  UserContentsGridStateBuilder();

  UserContentsGridStateBuilder get _$this {
    if (_$v != null) {
      _contents = _$v.contents?.toBuilder();
      _page = _$v.page;
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserContentsGridState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserContentsGridState;
  }

  @override
  void update(void Function(UserContentsGridStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserContentsGridState build() {
    _$UserContentsGridState _$result;
    try {
      _$result = _$v ??
          new _$UserContentsGridState._(
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
            'UserContentsGridState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
