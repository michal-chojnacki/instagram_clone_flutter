// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recommended_profiles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RecommendedProfilesStateTearOff {
  const _$RecommendedProfilesStateTearOff();

// ignore: unused_element
  _RecommendedProfilesState call(
      {@required List<User> users, @required bool loading}) {
    return _RecommendedProfilesState(
      users: users,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RecommendedProfilesState = _$RecommendedProfilesStateTearOff();

/// @nodoc
mixin _$RecommendedProfilesState {
  List<User> get users;
  bool get loading;

  $RecommendedProfilesStateCopyWith<RecommendedProfilesState> get copyWith;
}

/// @nodoc
abstract class $RecommendedProfilesStateCopyWith<$Res> {
  factory $RecommendedProfilesStateCopyWith(RecommendedProfilesState value,
          $Res Function(RecommendedProfilesState) then) =
      _$RecommendedProfilesStateCopyWithImpl<$Res>;
  $Res call({List<User> users, bool loading});
}

/// @nodoc
class _$RecommendedProfilesStateCopyWithImpl<$Res>
    implements $RecommendedProfilesStateCopyWith<$Res> {
  _$RecommendedProfilesStateCopyWithImpl(this._value, this._then);

  final RecommendedProfilesState _value;
  // ignore: unused_field
  final $Res Function(RecommendedProfilesState) _then;

  @override
  $Res call({
    Object users = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed ? _value.users : users as List<User>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$RecommendedProfilesStateCopyWith<$Res>
    implements $RecommendedProfilesStateCopyWith<$Res> {
  factory _$RecommendedProfilesStateCopyWith(_RecommendedProfilesState value,
          $Res Function(_RecommendedProfilesState) then) =
      __$RecommendedProfilesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<User> users, bool loading});
}

/// @nodoc
class __$RecommendedProfilesStateCopyWithImpl<$Res>
    extends _$RecommendedProfilesStateCopyWithImpl<$Res>
    implements _$RecommendedProfilesStateCopyWith<$Res> {
  __$RecommendedProfilesStateCopyWithImpl(_RecommendedProfilesState _value,
      $Res Function(_RecommendedProfilesState) _then)
      : super(_value, (v) => _then(v as _RecommendedProfilesState));

  @override
  _RecommendedProfilesState get _value =>
      super._value as _RecommendedProfilesState;

  @override
  $Res call({
    Object users = freezed,
    Object loading = freezed,
  }) {
    return _then(_RecommendedProfilesState(
      users: users == freezed ? _value.users : users as List<User>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_RecommendedProfilesState
    with DiagnosticableTreeMixin
    implements _RecommendedProfilesState {
  _$_RecommendedProfilesState({@required this.users, @required this.loading})
      : assert(users != null),
        assert(loading != null);

  @override
  final List<User> users;
  @override
  final bool loading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecommendedProfilesState(users: $users, loading: $loading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecommendedProfilesState'))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('loading', loading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecommendedProfilesState &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(loading);

  @override
  _$RecommendedProfilesStateCopyWith<_RecommendedProfilesState> get copyWith =>
      __$RecommendedProfilesStateCopyWithImpl<_RecommendedProfilesState>(
          this, _$identity);
}

abstract class _RecommendedProfilesState implements RecommendedProfilesState {
  factory _RecommendedProfilesState(
      {@required List<User> users,
      @required bool loading}) = _$_RecommendedProfilesState;

  @override
  List<User> get users;
  @override
  bool get loading;
  @override
  _$RecommendedProfilesStateCopyWith<_RecommendedProfilesState> get copyWith;
}
