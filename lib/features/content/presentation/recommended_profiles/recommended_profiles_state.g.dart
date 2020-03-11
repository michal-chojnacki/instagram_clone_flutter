// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_profiles_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendedProfilesState extends RecommendedProfilesState {
  @override
  final BuiltList<User> users;
  @override
  final bool loading;

  factory _$RecommendedProfilesState(
          [void Function(RecommendedProfilesStateBuilder) updates]) =>
      (new RecommendedProfilesStateBuilder()..update(updates)).build();

  _$RecommendedProfilesState._({this.users, this.loading}) : super._() {
    if (users == null) {
      throw new BuiltValueNullFieldError('RecommendedProfilesState', 'users');
    }
    if (loading == null) {
      throw new BuiltValueNullFieldError('RecommendedProfilesState', 'loading');
    }
  }

  @override
  RecommendedProfilesState rebuild(
          void Function(RecommendedProfilesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendedProfilesStateBuilder toBuilder() =>
      new RecommendedProfilesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendedProfilesState &&
        users == other.users &&
        loading == other.loading;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, users.hashCode), loading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecommendedProfilesState')
          ..add('users', users)
          ..add('loading', loading))
        .toString();
  }
}

class RecommendedProfilesStateBuilder
    implements
        Builder<RecommendedProfilesState, RecommendedProfilesStateBuilder> {
  _$RecommendedProfilesState _$v;

  ListBuilder<User> _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(ListBuilder<User> users) => _$this._users = users;

  bool _loading;
  bool get loading => _$this._loading;
  set loading(bool loading) => _$this._loading = loading;

  RecommendedProfilesStateBuilder();

  RecommendedProfilesStateBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _loading = _$v.loading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendedProfilesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RecommendedProfilesState;
  }

  @override
  void update(void Function(RecommendedProfilesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecommendedProfilesState build() {
    _$RecommendedProfilesState _$result;
    try {
      _$result = _$v ??
          new _$RecommendedProfilesState._(
              users: users.build(), loading: loading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RecommendedProfilesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
