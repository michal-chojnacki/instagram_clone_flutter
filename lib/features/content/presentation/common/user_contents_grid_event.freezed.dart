// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_contents_grid_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserContentsGridEventTearOff {
  const _$UserContentsGridEventTearOff();

// ignore: unused_element
  FetchUserContent fetchUserContent({@required User user, @required int page}) {
    return FetchUserContent(
      user: user,
      page: page,
    );
  }

// ignore: unused_element
  FetchCurrentUserContent fetchCurrentUserContent({@required int page}) {
    return FetchCurrentUserContent(
      page: page,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserContentsGridEvent = _$UserContentsGridEventTearOff();

/// @nodoc
mixin _$UserContentsGridEvent {
  int get page;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchUserContent(User user, int page),
    @required Result fetchCurrentUserContent(int page),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchUserContent(User user, int page),
    Result fetchCurrentUserContent(int page),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchUserContent(FetchUserContent value),
    @required Result fetchCurrentUserContent(FetchCurrentUserContent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchUserContent(FetchUserContent value),
    Result fetchCurrentUserContent(FetchCurrentUserContent value),
    @required Result orElse(),
  });

  $UserContentsGridEventCopyWith<UserContentsGridEvent> get copyWith;
}

/// @nodoc
abstract class $UserContentsGridEventCopyWith<$Res> {
  factory $UserContentsGridEventCopyWith(UserContentsGridEvent value,
          $Res Function(UserContentsGridEvent) then) =
      _$UserContentsGridEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$UserContentsGridEventCopyWithImpl<$Res>
    implements $UserContentsGridEventCopyWith<$Res> {
  _$UserContentsGridEventCopyWithImpl(this._value, this._then);

  final UserContentsGridEvent _value;
  // ignore: unused_field
  final $Res Function(UserContentsGridEvent) _then;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
abstract class $FetchUserContentCopyWith<$Res>
    implements $UserContentsGridEventCopyWith<$Res> {
  factory $FetchUserContentCopyWith(
          FetchUserContent value, $Res Function(FetchUserContent) then) =
      _$FetchUserContentCopyWithImpl<$Res>;
  @override
  $Res call({User user, int page});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$FetchUserContentCopyWithImpl<$Res>
    extends _$UserContentsGridEventCopyWithImpl<$Res>
    implements $FetchUserContentCopyWith<$Res> {
  _$FetchUserContentCopyWithImpl(
      FetchUserContent _value, $Res Function(FetchUserContent) _then)
      : super(_value, (v) => _then(v as FetchUserContent));

  @override
  FetchUserContent get _value => super._value as FetchUserContent;

  @override
  $Res call({
    Object user = freezed,
    Object page = freezed,
  }) {
    return _then(FetchUserContent(
      user: user == freezed ? _value.user : user as User,
      page: page == freezed ? _value.page : page as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$FetchUserContent
    with DiagnosticableTreeMixin
    implements FetchUserContent {
  const _$FetchUserContent({@required this.user, @required this.page})
      : assert(user != null),
        assert(page != null);

  @override
  final User user;
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserContentsGridEvent.fetchUserContent(user: $user, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'UserContentsGridEvent.fetchUserContent'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchUserContent &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(page);

  @override
  $FetchUserContentCopyWith<FetchUserContent> get copyWith =>
      _$FetchUserContentCopyWithImpl<FetchUserContent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchUserContent(User user, int page),
    @required Result fetchCurrentUserContent(int page),
  }) {
    assert(fetchUserContent != null);
    assert(fetchCurrentUserContent != null);
    return fetchUserContent(user, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchUserContent(User user, int page),
    Result fetchCurrentUserContent(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchUserContent != null) {
      return fetchUserContent(user, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchUserContent(FetchUserContent value),
    @required Result fetchCurrentUserContent(FetchCurrentUserContent value),
  }) {
    assert(fetchUserContent != null);
    assert(fetchCurrentUserContent != null);
    return fetchUserContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchUserContent(FetchUserContent value),
    Result fetchCurrentUserContent(FetchCurrentUserContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchUserContent != null) {
      return fetchUserContent(this);
    }
    return orElse();
  }
}

abstract class FetchUserContent implements UserContentsGridEvent {
  const factory FetchUserContent({@required User user, @required int page}) =
      _$FetchUserContent;

  User get user;
  @override
  int get page;
  @override
  $FetchUserContentCopyWith<FetchUserContent> get copyWith;
}

/// @nodoc
abstract class $FetchCurrentUserContentCopyWith<$Res>
    implements $UserContentsGridEventCopyWith<$Res> {
  factory $FetchCurrentUserContentCopyWith(FetchCurrentUserContent value,
          $Res Function(FetchCurrentUserContent) then) =
      _$FetchCurrentUserContentCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class _$FetchCurrentUserContentCopyWithImpl<$Res>
    extends _$UserContentsGridEventCopyWithImpl<$Res>
    implements $FetchCurrentUserContentCopyWith<$Res> {
  _$FetchCurrentUserContentCopyWithImpl(FetchCurrentUserContent _value,
      $Res Function(FetchCurrentUserContent) _then)
      : super(_value, (v) => _then(v as FetchCurrentUserContent));

  @override
  FetchCurrentUserContent get _value => super._value as FetchCurrentUserContent;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(FetchCurrentUserContent(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$FetchCurrentUserContent
    with DiagnosticableTreeMixin
    implements FetchCurrentUserContent {
  const _$FetchCurrentUserContent({@required this.page}) : assert(page != null);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserContentsGridEvent.fetchCurrentUserContent(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'UserContentsGridEvent.fetchCurrentUserContent'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchCurrentUserContent &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $FetchCurrentUserContentCopyWith<FetchCurrentUserContent> get copyWith =>
      _$FetchCurrentUserContentCopyWithImpl<FetchCurrentUserContent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchUserContent(User user, int page),
    @required Result fetchCurrentUserContent(int page),
  }) {
    assert(fetchUserContent != null);
    assert(fetchCurrentUserContent != null);
    return fetchCurrentUserContent(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchUserContent(User user, int page),
    Result fetchCurrentUserContent(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCurrentUserContent != null) {
      return fetchCurrentUserContent(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchUserContent(FetchUserContent value),
    @required Result fetchCurrentUserContent(FetchCurrentUserContent value),
  }) {
    assert(fetchUserContent != null);
    assert(fetchCurrentUserContent != null);
    return fetchCurrentUserContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchUserContent(FetchUserContent value),
    Result fetchCurrentUserContent(FetchCurrentUserContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCurrentUserContent != null) {
      return fetchCurrentUserContent(this);
    }
    return orElse();
  }
}

abstract class FetchCurrentUserContent implements UserContentsGridEvent {
  const factory FetchCurrentUserContent({@required int page}) =
      _$FetchCurrentUserContent;

  @override
  int get page;
  @override
  $FetchCurrentUserContentCopyWith<FetchCurrentUserContent> get copyWith;
}
