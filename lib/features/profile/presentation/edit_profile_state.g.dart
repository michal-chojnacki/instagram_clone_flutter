// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditProfileState extends EditProfileState {
  @override
  final User user;
  @override
  final bool progressBarVisible;

  factory _$EditProfileState(
          [void Function(EditProfileStateBuilder) updates]) =>
      (new EditProfileStateBuilder()..update(updates)).build();

  _$EditProfileState._({this.user, this.progressBarVisible}) : super._() {
    if (progressBarVisible == null) {
      throw new BuiltValueNullFieldError(
          'EditProfileState', 'progressBarVisible');
    }
  }

  @override
  EditProfileState rebuild(void Function(EditProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditProfileStateBuilder toBuilder() =>
      new EditProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditProfileState &&
        user == other.user &&
        progressBarVisible == other.progressBarVisible;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), progressBarVisible.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditProfileState')
          ..add('user', user)
          ..add('progressBarVisible', progressBarVisible))
        .toString();
  }
}

class EditProfileStateBuilder
    implements Builder<EditProfileState, EditProfileStateBuilder> {
  _$EditProfileState _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  bool _progressBarVisible;
  bool get progressBarVisible => _$this._progressBarVisible;
  set progressBarVisible(bool progressBarVisible) =>
      _$this._progressBarVisible = progressBarVisible;

  EditProfileStateBuilder();

  EditProfileStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _progressBarVisible = _$v.progressBarVisible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditProfileState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EditProfileState;
  }

  @override
  void update(void Function(EditProfileStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditProfileState build() {
    _$EditProfileState _$result;
    try {
      _$result = _$v ??
          new _$EditProfileState._(
              user: _user?.build(), progressBarVisible: progressBarVisible);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EditProfileState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
