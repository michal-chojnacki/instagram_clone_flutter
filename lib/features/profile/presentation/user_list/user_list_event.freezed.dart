// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserListEventTearOff {
  const _$UserListEventTearOff();

// ignore: unused_element
  FetchFollowers fetchFollowers({@required int page, @required int userId}) {
    return FetchFollowers(
      page: page,
      userId: userId,
    );
  }

// ignore: unused_element
  FetchFollowees fetchFollowees({@required int page, @required int userId}) {
    return FetchFollowees(
      page: page,
      userId: userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserListEvent = _$UserListEventTearOff();

/// @nodoc
mixin _$UserListEvent {
  int get page;
  int get userId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchFollowers(int page, int userId),
    @required Result fetchFollowees(int page, int userId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFollowers(int page, int userId),
    Result fetchFollowees(int page, int userId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchFollowers(FetchFollowers value),
    @required Result fetchFollowees(FetchFollowees value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFollowers(FetchFollowers value),
    Result fetchFollowees(FetchFollowees value),
    @required Result orElse(),
  });

  $UserListEventCopyWith<UserListEvent> get copyWith;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res>;
  $Res call({int page, int userId});
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  final UserListEvent _value;
  // ignore: unused_field
  final $Res Function(UserListEvent) _then;

  @override
  $Res call({
    Object page = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
abstract class $FetchFollowersCopyWith<$Res>
    implements $UserListEventCopyWith<$Res> {
  factory $FetchFollowersCopyWith(
          FetchFollowers value, $Res Function(FetchFollowers) then) =
      _$FetchFollowersCopyWithImpl<$Res>;
  @override
  $Res call({int page, int userId});
}

/// @nodoc
class _$FetchFollowersCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res>
    implements $FetchFollowersCopyWith<$Res> {
  _$FetchFollowersCopyWithImpl(
      FetchFollowers _value, $Res Function(FetchFollowers) _then)
      : super(_value, (v) => _then(v as FetchFollowers));

  @override
  FetchFollowers get _value => super._value as FetchFollowers;

  @override
  $Res call({
    Object page = freezed,
    Object userId = freezed,
  }) {
    return _then(FetchFollowers(
      page: page == freezed ? _value.page : page as int,
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
class _$FetchFollowers with DiagnosticableTreeMixin implements FetchFollowers {
  const _$FetchFollowers({@required this.page, @required this.userId})
      : assert(page != null),
        assert(userId != null);

  @override
  final int page;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListEvent.fetchFollowers(page: $page, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListEvent.fetchFollowers'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchFollowers &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(userId);

  @override
  $FetchFollowersCopyWith<FetchFollowers> get copyWith =>
      _$FetchFollowersCopyWithImpl<FetchFollowers>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchFollowers(int page, int userId),
    @required Result fetchFollowees(int page, int userId),
  }) {
    assert(fetchFollowers != null);
    assert(fetchFollowees != null);
    return fetchFollowers(page, userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFollowers(int page, int userId),
    Result fetchFollowees(int page, int userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFollowers != null) {
      return fetchFollowers(page, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchFollowers(FetchFollowers value),
    @required Result fetchFollowees(FetchFollowees value),
  }) {
    assert(fetchFollowers != null);
    assert(fetchFollowees != null);
    return fetchFollowers(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFollowers(FetchFollowers value),
    Result fetchFollowees(FetchFollowees value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFollowers != null) {
      return fetchFollowers(this);
    }
    return orElse();
  }
}

abstract class FetchFollowers implements UserListEvent {
  const factory FetchFollowers({@required int page, @required int userId}) =
      _$FetchFollowers;

  @override
  int get page;
  @override
  int get userId;
  @override
  $FetchFollowersCopyWith<FetchFollowers> get copyWith;
}

/// @nodoc
abstract class $FetchFolloweesCopyWith<$Res>
    implements $UserListEventCopyWith<$Res> {
  factory $FetchFolloweesCopyWith(
          FetchFollowees value, $Res Function(FetchFollowees) then) =
      _$FetchFolloweesCopyWithImpl<$Res>;
  @override
  $Res call({int page, int userId});
}

/// @nodoc
class _$FetchFolloweesCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res>
    implements $FetchFolloweesCopyWith<$Res> {
  _$FetchFolloweesCopyWithImpl(
      FetchFollowees _value, $Res Function(FetchFollowees) _then)
      : super(_value, (v) => _then(v as FetchFollowees));

  @override
  FetchFollowees get _value => super._value as FetchFollowees;

  @override
  $Res call({
    Object page = freezed,
    Object userId = freezed,
  }) {
    return _then(FetchFollowees(
      page: page == freezed ? _value.page : page as int,
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
class _$FetchFollowees with DiagnosticableTreeMixin implements FetchFollowees {
  const _$FetchFollowees({@required this.page, @required this.userId})
      : assert(page != null),
        assert(userId != null);

  @override
  final int page;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListEvent.fetchFollowees(page: $page, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListEvent.fetchFollowees'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchFollowees &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(userId);

  @override
  $FetchFolloweesCopyWith<FetchFollowees> get copyWith =>
      _$FetchFolloweesCopyWithImpl<FetchFollowees>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchFollowers(int page, int userId),
    @required Result fetchFollowees(int page, int userId),
  }) {
    assert(fetchFollowers != null);
    assert(fetchFollowees != null);
    return fetchFollowees(page, userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFollowers(int page, int userId),
    Result fetchFollowees(int page, int userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFollowees != null) {
      return fetchFollowees(page, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchFollowers(FetchFollowers value),
    @required Result fetchFollowees(FetchFollowees value),
  }) {
    assert(fetchFollowers != null);
    assert(fetchFollowees != null);
    return fetchFollowees(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFollowers(FetchFollowers value),
    Result fetchFollowees(FetchFollowees value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFollowees != null) {
      return fetchFollowees(this);
    }
    return orElse();
  }
}

abstract class FetchFollowees implements UserListEvent {
  const factory FetchFollowees({@required int page, @required int userId}) =
      _$FetchFollowees;

  @override
  int get page;
  @override
  int get userId;
  @override
  $FetchFolloweesCopyWith<FetchFollowees> get copyWith;
}
