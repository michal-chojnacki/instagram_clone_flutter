// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawUsers _$RawUsersFromJson(Map<String, dynamic> json) {
  return _RawUsers.fromJson(json);
}

/// @nodoc
class _$RawUsersTearOff {
  const _$RawUsersTearOff();

// ignore: unused_element
  _RawUsers call(
      {@nullable List<RawUser> users,
      @nullable int page,
      @nullable int pages}) {
    return _RawUsers(
      users: users,
      page: page,
      pages: pages,
    );
  }

// ignore: unused_element
  RawUsers fromJson(Map<String, Object> json) {
    return RawUsers.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawUsers = _$RawUsersTearOff();

/// @nodoc
mixin _$RawUsers {
  @nullable
  List<RawUser> get users;
  @nullable
  int get page;
  @nullable
  int get pages;

  Map<String, dynamic> toJson();
  $RawUsersCopyWith<RawUsers> get copyWith;
}

/// @nodoc
abstract class $RawUsersCopyWith<$Res> {
  factory $RawUsersCopyWith(RawUsers value, $Res Function(RawUsers) then) =
      _$RawUsersCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<RawUser> users, @nullable int page, @nullable int pages});
}

/// @nodoc
class _$RawUsersCopyWithImpl<$Res> implements $RawUsersCopyWith<$Res> {
  _$RawUsersCopyWithImpl(this._value, this._then);

  final RawUsers _value;
  // ignore: unused_field
  final $Res Function(RawUsers) _then;

  @override
  $Res call({
    Object users = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed ? _value.users : users as List<RawUser>,
      page: page == freezed ? _value.page : page as int,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

/// @nodoc
abstract class _$RawUsersCopyWith<$Res> implements $RawUsersCopyWith<$Res> {
  factory _$RawUsersCopyWith(_RawUsers value, $Res Function(_RawUsers) then) =
      __$RawUsersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<RawUser> users, @nullable int page, @nullable int pages});
}

/// @nodoc
class __$RawUsersCopyWithImpl<$Res> extends _$RawUsersCopyWithImpl<$Res>
    implements _$RawUsersCopyWith<$Res> {
  __$RawUsersCopyWithImpl(_RawUsers _value, $Res Function(_RawUsers) _then)
      : super(_value, (v) => _then(v as _RawUsers));

  @override
  _RawUsers get _value => super._value as _RawUsers;

  @override
  $Res call({
    Object users = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_RawUsers(
      users: users == freezed ? _value.users : users as List<RawUser>,
      page: page == freezed ? _value.page : page as int,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawUsers with DiagnosticableTreeMixin implements _RawUsers {
  _$_RawUsers(
      {@nullable this.users, @nullable this.page, @nullable this.pages});

  factory _$_RawUsers.fromJson(Map<String, dynamic> json) =>
      _$_$_RawUsersFromJson(json);

  @override
  @nullable
  final List<RawUser> users;
  @override
  @nullable
  final int page;
  @override
  @nullable
  final int pages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawUsers(users: $users, page: $page, pages: $pages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawUsers'))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pages', pages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawUsers &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pages);

  @override
  _$RawUsersCopyWith<_RawUsers> get copyWith =>
      __$RawUsersCopyWithImpl<_RawUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawUsersToJson(this);
  }
}

abstract class _RawUsers implements RawUsers {
  factory _RawUsers(
      {@nullable List<RawUser> users,
      @nullable int page,
      @nullable int pages}) = _$_RawUsers;

  factory _RawUsers.fromJson(Map<String, dynamic> json) = _$_RawUsers.fromJson;

  @override
  @nullable
  List<RawUser> get users;
  @override
  @nullable
  int get page;
  @override
  @nullable
  int get pages;
  @override
  _$RawUsersCopyWith<_RawUsers> get copyWith;
}
