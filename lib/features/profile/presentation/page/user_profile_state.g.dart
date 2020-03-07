// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileState extends UserProfileState {
  @override
  final BuiltList<Content> contents;
  @override
  final bool observing;
  @override
  final bool progressBarVisible;

  factory _$UserProfileState(
          [void Function(UserProfileStateBuilder) updates]) =>
      (new UserProfileStateBuilder()..update(updates)).build();

  _$UserProfileState._({this.contents, this.observing, this.progressBarVisible})
      : super._() {
    if (contents == null) {
      throw new BuiltValueNullFieldError('UserProfileState', 'contents');
    }
    if (observing == null) {
      throw new BuiltValueNullFieldError('UserProfileState', 'observing');
    }
    if (progressBarVisible == null) {
      throw new BuiltValueNullFieldError(
          'UserProfileState', 'progressBarVisible');
    }
  }

  @override
  UserProfileState rebuild(void Function(UserProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileStateBuilder toBuilder() =>
      new UserProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileState &&
        contents == other.contents &&
        observing == other.observing &&
        progressBarVisible == other.progressBarVisible;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, contents.hashCode), observing.hashCode),
        progressBarVisible.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserProfileState')
          ..add('contents', contents)
          ..add('observing', observing)
          ..add('progressBarVisible', progressBarVisible))
        .toString();
  }
}

class UserProfileStateBuilder
    implements Builder<UserProfileState, UserProfileStateBuilder> {
  _$UserProfileState _$v;

  ListBuilder<Content> _contents;
  ListBuilder<Content> get contents =>
      _$this._contents ??= new ListBuilder<Content>();
  set contents(ListBuilder<Content> contents) => _$this._contents = contents;

  bool _observing;
  bool get observing => _$this._observing;
  set observing(bool observing) => _$this._observing = observing;

  bool _progressBarVisible;
  bool get progressBarVisible => _$this._progressBarVisible;
  set progressBarVisible(bool progressBarVisible) =>
      _$this._progressBarVisible = progressBarVisible;

  UserProfileStateBuilder();

  UserProfileStateBuilder get _$this {
    if (_$v != null) {
      _contents = _$v.contents?.toBuilder();
      _observing = _$v.observing;
      _progressBarVisible = _$v.progressBarVisible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserProfileState;
  }

  @override
  void update(void Function(UserProfileStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserProfileState build() {
    _$UserProfileState _$result;
    try {
      _$result = _$v ??
          new _$UserProfileState._(
              contents: contents.build(),
              observing: observing,
              progressBarVisible: progressBarVisible);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contents';
        contents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserProfileState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
