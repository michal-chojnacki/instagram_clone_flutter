// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_contents_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MainContentsState extends MainContentsState {
  @override
  final BuiltList<Content> contents;
  @override
  final bool hasReachedEndOfResults;

  factory _$MainContentsState(
          [void Function(MainContentsStateBuilder) updates]) =>
      (new MainContentsStateBuilder()..update(updates)).build();

  _$MainContentsState._({this.contents, this.hasReachedEndOfResults})
      : super._() {
    if (contents == null) {
      throw new BuiltValueNullFieldError('MainContentsState', 'contents');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'MainContentsState', 'hasReachedEndOfResults');
    }
  }

  @override
  MainContentsState rebuild(void Function(MainContentsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainContentsStateBuilder toBuilder() =>
      new MainContentsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainContentsState &&
        contents == other.contents &&
        hasReachedEndOfResults == other.hasReachedEndOfResults;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, contents.hashCode), hasReachedEndOfResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MainContentsState')
          ..add('contents', contents)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults))
        .toString();
  }
}

class MainContentsStateBuilder
    implements Builder<MainContentsState, MainContentsStateBuilder> {
  _$MainContentsState _$v;

  ListBuilder<Content> _contents;
  ListBuilder<Content> get contents =>
      _$this._contents ??= new ListBuilder<Content>();
  set contents(ListBuilder<Content> contents) => _$this._contents = contents;

  bool _hasReachedEndOfResults;
  bool get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

  MainContentsStateBuilder();

  MainContentsStateBuilder get _$this {
    if (_$v != null) {
      _contents = _$v.contents?.toBuilder();
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainContentsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MainContentsState;
  }

  @override
  void update(void Function(MainContentsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MainContentsState build() {
    _$MainContentsState _$result;
    try {
      _$result = _$v ??
          new _$MainContentsState._(
              contents: contents.build(),
              hasReachedEndOfResults: hasReachedEndOfResults);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contents';
        contents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MainContentsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new