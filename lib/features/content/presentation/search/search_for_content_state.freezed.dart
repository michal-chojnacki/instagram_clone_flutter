// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_for_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchForContentStateTearOff {
  const _$SearchForContentStateTearOff();

// ignore: unused_element
  _SearchForContentState call(
      {@required List<PersonalizedContent> contents,
      @required int page,
      @required bool hasReachedEndOfResults}) {
    return _SearchForContentState(
      contents: contents,
      page: page,
      hasReachedEndOfResults: hasReachedEndOfResults,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchForContentState = _$SearchForContentStateTearOff();

/// @nodoc
mixin _$SearchForContentState {
  List<PersonalizedContent> get contents;
  int get page;
  bool get hasReachedEndOfResults;

  $SearchForContentStateCopyWith<SearchForContentState> get copyWith;
}

/// @nodoc
abstract class $SearchForContentStateCopyWith<$Res> {
  factory $SearchForContentStateCopyWith(SearchForContentState value,
          $Res Function(SearchForContentState) then) =
      _$SearchForContentStateCopyWithImpl<$Res>;
  $Res call(
      {List<PersonalizedContent> contents,
      int page,
      bool hasReachedEndOfResults});
}

/// @nodoc
class _$SearchForContentStateCopyWithImpl<$Res>
    implements $SearchForContentStateCopyWith<$Res> {
  _$SearchForContentStateCopyWithImpl(this._value, this._then);

  final SearchForContentState _value;
  // ignore: unused_field
  final $Res Function(SearchForContentState) _then;

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
abstract class _$SearchForContentStateCopyWith<$Res>
    implements $SearchForContentStateCopyWith<$Res> {
  factory _$SearchForContentStateCopyWith(_SearchForContentState value,
          $Res Function(_SearchForContentState) then) =
      __$SearchForContentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PersonalizedContent> contents,
      int page,
      bool hasReachedEndOfResults});
}

/// @nodoc
class __$SearchForContentStateCopyWithImpl<$Res>
    extends _$SearchForContentStateCopyWithImpl<$Res>
    implements _$SearchForContentStateCopyWith<$Res> {
  __$SearchForContentStateCopyWithImpl(_SearchForContentState _value,
      $Res Function(_SearchForContentState) _then)
      : super(_value, (v) => _then(v as _SearchForContentState));

  @override
  _SearchForContentState get _value => super._value as _SearchForContentState;

  @override
  $Res call({
    Object contents = freezed,
    Object page = freezed,
    Object hasReachedEndOfResults = freezed,
  }) {
    return _then(_SearchForContentState(
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
class _$_SearchForContentState
    with DiagnosticableTreeMixin
    implements _SearchForContentState {
  _$_SearchForContentState(
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
    return 'SearchForContentState(contents: $contents, page: $page, hasReachedEndOfResults: $hasReachedEndOfResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchForContentState'))
      ..add(DiagnosticsProperty('contents', contents))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty(
          'hasReachedEndOfResults', hasReachedEndOfResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchForContentState &&
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
  _$SearchForContentStateCopyWith<_SearchForContentState> get copyWith =>
      __$SearchForContentStateCopyWithImpl<_SearchForContentState>(
          this, _$identity);
}

abstract class _SearchForContentState implements SearchForContentState {
  factory _SearchForContentState(
      {@required List<PersonalizedContent> contents,
      @required int page,
      @required bool hasReachedEndOfResults}) = _$_SearchForContentState;

  @override
  List<PersonalizedContent> get contents;
  @override
  int get page;
  @override
  bool get hasReachedEndOfResults;
  @override
  _$SearchForContentStateCopyWith<_SearchForContentState> get copyWith;
}
