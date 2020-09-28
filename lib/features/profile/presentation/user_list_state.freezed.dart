// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserListStateTearOff {
  const _$UserListStateTearOff();

// ignore: unused_element
  _UserListState call(
      {@required List<User> users,
      @required int page,
      @required bool hasReachedEndOfResults}) {
    return _UserListState(
      users: users,
      page: page,
      hasReachedEndOfResults: hasReachedEndOfResults,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserListState = _$UserListStateTearOff();

/// @nodoc
mixin _$UserListState {
  List<User> get users;
  int get page;
  bool get hasReachedEndOfResults;

  $UserListStateCopyWith<UserListState> get copyWith;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res>;
  $Res call({List<User> users, int page, bool hasReachedEndOfResults});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  final UserListState _value;
  // ignore: unused_field
  final $Res Function(UserListState) _then;

  @override
  $Res call({
    Object users = freezed,
    Object page = freezed,
    Object hasReachedEndOfResults = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed ? _value.users : users as List<User>,
      page: page == freezed ? _value.page : page as int,
      hasReachedEndOfResults: hasReachedEndOfResults == freezed
          ? _value.hasReachedEndOfResults
          : hasReachedEndOfResults as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$UserListStateCopyWith(
          _UserListState value, $Res Function(_UserListState) then) =
      __$UserListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<User> users, int page, bool hasReachedEndOfResults});
}

/// @nodoc
class __$UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res>
    implements _$UserListStateCopyWith<$Res> {
  __$UserListStateCopyWithImpl(
      _UserListState _value, $Res Function(_UserListState) _then)
      : super(_value, (v) => _then(v as _UserListState));

  @override
  _UserListState get _value => super._value as _UserListState;

  @override
  $Res call({
    Object users = freezed,
    Object page = freezed,
    Object hasReachedEndOfResults = freezed,
  }) {
    return _then(_UserListState(
      users: users == freezed ? _value.users : users as List<User>,
      page: page == freezed ? _value.page : page as int,
      hasReachedEndOfResults: hasReachedEndOfResults == freezed
          ? _value.hasReachedEndOfResults
          : hasReachedEndOfResults as bool,
    ));
  }
}

/// @nodoc
class _$_UserListState with DiagnosticableTreeMixin implements _UserListState {
  _$_UserListState(
      {@required this.users,
      @required this.page,
      @required this.hasReachedEndOfResults})
      : assert(users != null),
        assert(page != null),
        assert(hasReachedEndOfResults != null);

  @override
  final List<User> users;
  @override
  final int page;
  @override
  final bool hasReachedEndOfResults;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListState(users: $users, page: $page, hasReachedEndOfResults: $hasReachedEndOfResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListState'))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty(
          'hasReachedEndOfResults', hasReachedEndOfResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserListState &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.hasReachedEndOfResults, hasReachedEndOfResults) ||
                const DeepCollectionEquality().equals(
                    other.hasReachedEndOfResults, hasReachedEndOfResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(hasReachedEndOfResults);

  @override
  _$UserListStateCopyWith<_UserListState> get copyWith =>
      __$UserListStateCopyWithImpl<_UserListState>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  factory _UserListState(
      {@required List<User> users,
      @required int page,
      @required bool hasReachedEndOfResults}) = _$_UserListState;

  @override
  List<User> get users;
  @override
  int get page;
  @override
  bool get hasReachedEndOfResults;
  @override
  _$UserListStateCopyWith<_UserListState> get copyWith;
}
