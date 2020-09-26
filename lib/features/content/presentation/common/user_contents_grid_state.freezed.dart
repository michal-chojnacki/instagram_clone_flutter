// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_contents_grid_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserContentsGridStateTearOff {
  const _$UserContentsGridStateTearOff();

// ignore: unused_element
  _UserContentsGridState call(
      {@required List<PersonalizedContent> contents,
      @required int page,
      @required bool hasReachedEndOfResults}) {
    return _UserContentsGridState(
      contents: contents,
      page: page,
      hasReachedEndOfResults: hasReachedEndOfResults,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserContentsGridState = _$UserContentsGridStateTearOff();

/// @nodoc
mixin _$UserContentsGridState {
  List<PersonalizedContent> get contents;
  int get page;
  bool get hasReachedEndOfResults;

  $UserContentsGridStateCopyWith<UserContentsGridState> get copyWith;
}

/// @nodoc
abstract class $UserContentsGridStateCopyWith<$Res> {
  factory $UserContentsGridStateCopyWith(UserContentsGridState value,
          $Res Function(UserContentsGridState) then) =
      _$UserContentsGridStateCopyWithImpl<$Res>;
  $Res call(
      {List<PersonalizedContent> contents,
      int page,
      bool hasReachedEndOfResults});
}

/// @nodoc
class _$UserContentsGridStateCopyWithImpl<$Res>
    implements $UserContentsGridStateCopyWith<$Res> {
  _$UserContentsGridStateCopyWithImpl(this._value, this._then);

  final UserContentsGridState _value;
  // ignore: unused_field
  final $Res Function(UserContentsGridState) _then;

  @override
  $Res call({
    Object contents = freezed,
    Object page = freezed,
    Object hasReachedEndOfResults = freezed,
  }) {
    return _then(_value.copyWith(
      contents: contents == freezed
          ? _value.contents
          : contents as List<PersonalizedContent>,
      page: page == freezed ? _value.page : page as int,
      hasReachedEndOfResults: hasReachedEndOfResults == freezed
          ? _value.hasReachedEndOfResults
          : hasReachedEndOfResults as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserContentsGridStateCopyWith<$Res>
    implements $UserContentsGridStateCopyWith<$Res> {
  factory _$UserContentsGridStateCopyWith(_UserContentsGridState value,
          $Res Function(_UserContentsGridState) then) =
      __$UserContentsGridStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PersonalizedContent> contents,
      int page,
      bool hasReachedEndOfResults});
}

/// @nodoc
class __$UserContentsGridStateCopyWithImpl<$Res>
    extends _$UserContentsGridStateCopyWithImpl<$Res>
    implements _$UserContentsGridStateCopyWith<$Res> {
  __$UserContentsGridStateCopyWithImpl(_UserContentsGridState _value,
      $Res Function(_UserContentsGridState) _then)
      : super(_value, (v) => _then(v as _UserContentsGridState));

  @override
  _UserContentsGridState get _value => super._value as _UserContentsGridState;

  @override
  $Res call({
    Object contents = freezed,
    Object page = freezed,
    Object hasReachedEndOfResults = freezed,
  }) {
    return _then(_UserContentsGridState(
      contents: contents == freezed
          ? _value.contents
          : contents as List<PersonalizedContent>,
      page: page == freezed ? _value.page : page as int,
      hasReachedEndOfResults: hasReachedEndOfResults == freezed
          ? _value.hasReachedEndOfResults
          : hasReachedEndOfResults as bool,
    ));
  }
}

/// @nodoc
class _$_UserContentsGridState
    with DiagnosticableTreeMixin
    implements _UserContentsGridState {
  _$_UserContentsGridState(
      {@required this.contents,
      @required this.page,
      @required this.hasReachedEndOfResults})
      : assert(contents != null),
        assert(page != null),
        assert(hasReachedEndOfResults != null);

  @override
  final List<PersonalizedContent> contents;
  @override
  final int page;
  @override
  final bool hasReachedEndOfResults;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserContentsGridState(contents: $contents, page: $page, hasReachedEndOfResults: $hasReachedEndOfResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserContentsGridState'))
      ..add(DiagnosticsProperty('contents', contents))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty(
          'hasReachedEndOfResults', hasReachedEndOfResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserContentsGridState &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.hasReachedEndOfResults, hasReachedEndOfResults) ||
                const DeepCollectionEquality().equals(
                    other.hasReachedEndOfResults, hasReachedEndOfResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(hasReachedEndOfResults);

  @override
  _$UserContentsGridStateCopyWith<_UserContentsGridState> get copyWith =>
      __$UserContentsGridStateCopyWithImpl<_UserContentsGridState>(
          this, _$identity);
}

abstract class _UserContentsGridState implements UserContentsGridState {
  factory _UserContentsGridState(
      {@required List<PersonalizedContent> contents,
      @required int page,
      @required bool hasReachedEndOfResults}) = _$_UserContentsGridState;

  @override
  List<PersonalizedContent> get contents;
  @override
  int get page;
  @override
  bool get hasReachedEndOfResults;
  @override
  _$UserContentsGridStateCopyWith<_UserContentsGridState> get copyWith;
}
