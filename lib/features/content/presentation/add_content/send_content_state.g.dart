// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_contents_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendContentState extends SendContentState {
  @override
  final bool progressBarVisible;
  @override
  final bool error;

  factory _$SendContentState(
          [void Function(SendContentStateBuilder) updates]) =>
      (new SendContentStateBuilder()..update(updates)).build();

  _$SendContentState._({this.progressBarVisible, this.error}) : super._() {
    if (progressBarVisible == null) {
      throw new BuiltValueNullFieldError(
          'SendContentState', 'progressBarVisible');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SendContentState', 'error');
    }
  }

  @override
  SendContentState rebuild(void Function(SendContentStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendContentStateBuilder toBuilder() =>
      new SendContentStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendContentState &&
        progressBarVisible == other.progressBarVisible &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, progressBarVisible.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SendContentState')
          ..add('progressBarVisible', progressBarVisible)
          ..add('error', error))
        .toString();
  }
}

class SendContentStateBuilder
    implements Builder<SendContentState, SendContentStateBuilder> {
  _$SendContentState _$v;

  bool _progressBarVisible;
  bool get progressBarVisible => _$this._progressBarVisible;
  set progressBarVisible(bool progressBarVisible) =>
      _$this._progressBarVisible = progressBarVisible;

  bool _error;
  bool get error => _$this._error;
  set error(bool error) => _$this._error = error;

  SendContentStateBuilder();

  SendContentStateBuilder get _$this {
    if (_$v != null) {
      _progressBarVisible = _$v.progressBarVisible;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendContentState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SendContentState;
  }

  @override
  void update(void Function(SendContentStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SendContentState build() {
    final _$result = _$v ??
        new _$SendContentState._(
            progressBarVisible: progressBarVisible, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
