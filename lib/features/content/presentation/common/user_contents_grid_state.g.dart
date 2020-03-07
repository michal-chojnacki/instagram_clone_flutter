// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_contents_grid_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserContentsGridState extends UserContentsGridState {
  @override
  final BuiltList<Content> contents;
  @override
  final bool progressBarVisible;

  factory _$UserContentsGridState(
          [void Function(UserContentsGridStateBuilder) updates]) =>
      (new UserContentsGridStateBuilder()..update(updates)).build();

  _$UserContentsGridState._({this.contents, this.progressBarVisible})
      : super._() {
    if (contents == null) {
      throw new BuiltValueNullFieldError('UserContentsGridState', 'contents');
    }
    if (progressBarVisible == null) {
      throw new BuiltValueNullFieldError(
          'UserContentsGridState', 'progressBarVisible');
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
        progressBarVisible == other.progressBarVisible;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, contents.hashCode), progressBarVisible.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserContentsGridState')
          ..add('contents', contents)
          ..add('progressBarVisible', progressBarVisible))
        .toString();
  }
}

class UserContentsGridStateBuilder
    implements Builder<UserContentsGridState, UserContentsGridStateBuilder> {
  _$UserContentsGridState _$v;

  ListBuilder<Content> _contents;
  ListBuilder<Content> get contents =>
      _$this._contents ??= new ListBuilder<Content>();
  set contents(ListBuilder<Content> contents) => _$this._contents = contents;

  bool _progressBarVisible;
  bool get progressBarVisible => _$this._progressBarVisible;
  set progressBarVisible(bool progressBarVisible) =>
      _$this._progressBarVisible = progressBarVisible;

  UserContentsGridStateBuilder();

  UserContentsGridStateBuilder get _$this {
    if (_$v != null) {
      _contents = _$v.contents?.toBuilder();
      _progressBarVisible = _$v.progressBarVisible;
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
              progressBarVisible: progressBarVisible);
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
