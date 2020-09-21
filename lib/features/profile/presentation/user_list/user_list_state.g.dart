// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserListState extends UserListState {
  @override
  final BuiltList<User> users;
  @override
  final int page;
  @override
  final bool hasReachedEndOfResults;

  factory _$UserListState([void Function(UserListStateBuilder) updates]) =>
      (new UserListStateBuilder()..update(updates)).build();

  _$UserListState._({this.users, this.page, this.hasReachedEndOfResults})
      : super._() {
    if (users == null) {
      throw new BuiltValueNullFieldError('UserListState', 'users');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('UserListState', 'page');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'UserListState', 'hasReachedEndOfResults');
    }
  }

  @override
  UserListState rebuild(void Function(UserListStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListStateBuilder toBuilder() => new UserListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserListState &&
        users == other.users &&
        page == other.page &&
        hasReachedEndOfResults == other.hasReachedEndOfResults;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, users.hashCode), page.hashCode),
        hasReachedEndOfResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserListState')
          ..add('users', users)
          ..add('page', page)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults))
        .toString();
  }
}

class UserListStateBuilder
    implements Builder<UserListState, UserListStateBuilder> {
  _$UserListState _$v;

  ListBuilder<User> _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(ListBuilder<User> users) => _$this._users = users;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  bool _hasReachedEndOfResults;
  bool get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

  UserListStateBuilder();

  UserListStateBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _page = _$v.page;
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserListState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserListState;
  }

  @override
  void update(void Function(UserListStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserListState build() {
    _$UserListState _$result;
    try {
      _$result = _$v ??
          new _$UserListState._(
              users: users.build(),
              page: page,
              hasReachedEndOfResults: hasReachedEndOfResults);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserListState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
