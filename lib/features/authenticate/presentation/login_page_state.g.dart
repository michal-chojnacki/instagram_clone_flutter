// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_page_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginPageState extends LoginPageState {
  @override
  final bool loading;
  @override
  final bool error;

  factory _$LoginPageState([void Function(LoginPageStateBuilder) updates]) =>
      (new LoginPageStateBuilder()..update(updates)).build();

  _$LoginPageState._({this.loading, this.error}) : super._() {
    if (loading == null) {
      throw new BuiltValueNullFieldError('LoginPageState', 'loading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('LoginPageState', 'error');
    }
  }

  @override
  LoginPageState rebuild(void Function(LoginPageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginPageStateBuilder toBuilder() =>
      new LoginPageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginPageState &&
        loading == other.loading &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, loading.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginPageState')
          ..add('loading', loading)
          ..add('error', error))
        .toString();
  }
}

class LoginPageStateBuilder
    implements Builder<LoginPageState, LoginPageStateBuilder> {
  _$LoginPageState _$v;

  bool _loading;
  bool get loading => _$this._loading;
  set loading(bool loading) => _$this._loading = loading;

  bool _error;
  bool get error => _$this._error;
  set error(bool error) => _$this._error = error;

  LoginPageStateBuilder();

  LoginPageStateBuilder get _$this {
    if (_$v != null) {
      _loading = _$v.loading;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginPageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginPageState;
  }

  @override
  void update(void Function(LoginPageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginPageState build() {
    final _$result =
        _$v ?? new _$LoginPageState._(loading: loading, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
