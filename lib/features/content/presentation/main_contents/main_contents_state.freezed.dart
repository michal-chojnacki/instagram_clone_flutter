// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'main_contents_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MainContentsStateTearOff {
  const _$MainContentsStateTearOff();

// ignore: unused_element
  _MainContentsState call(
      {@required List<PersonalizedContent> contents,
      @required int page,
      @required bool hasReachedEndOfResults,
      @nullable Function onRetry}) {
    return _MainContentsState(
      contents: contents,
      page: page,
      hasReachedEndOfResults: hasReachedEndOfResults,
      onRetry: onRetry,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MainContentsState = _$MainContentsStateTearOff();

/// @nodoc
mixin _$MainContentsState {
  List<PersonalizedContent> get contents;
  int get page;
  bool get hasReachedEndOfResults;
  @nullable
  Function get onRetry;

  $MainContentsStateCopyWith<MainContentsState> get copyWith;
}

/// @nodoc
abstract class $MainContentsStateCopyWith<$Res> {
  factory $MainContentsStateCopyWith(
          MainContentsState value, $Res Function(MainContentsState) then) =
      _$MainContentsStateCopyWithImpl<$Res>;
  $Res call(
      {List<PersonalizedContent> contents,
      int page,
      bool hasReachedEndOfResults,
      @nullable Function onRetry});
}

/// @nodoc
class _$MainContentsStateCopyWithImpl<$Res>
    implements $MainContentsStateCopyWith<$Res> {
  _$MainContentsStateCopyWithImpl(this._value, this._then);

  final MainContentsState _value;
  // ignore: unused_field
  final $Res Function(MainContentsState) _then;

  @override
  $Res call({
    Object contents = freezed,
    Object page = freezed,
    Object hasReachedEndOfResults = freezed,
    Object onRetry = freezed,
  }) {
    return _then(_value.copyWith(
      contents: contents == freezed
          ? _value.contents
          : contents as List<PersonalizedContent>,
      page: page == freezed ? _value.page : page as int,
      hasReachedEndOfResults: hasReachedEndOfResults == freezed
          ? _value.hasReachedEndOfResults
          : hasReachedEndOfResults as bool,
      onRetry: onRetry == freezed ? _value.onRetry : onRetry as Function,
    ));
  }
}

/// @nodoc
abstract class _$MainContentsStateCopyWith<$Res>
    implements $MainContentsStateCopyWith<$Res> {
  factory _$MainContentsStateCopyWith(
          _MainContentsState value, $Res Function(_MainContentsState) then) =
      __$MainContentsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PersonalizedContent> contents,
      int page,
      bool hasReachedEndOfResults,
      @nullable Function onRetry});
}

/// @nodoc
class __$MainContentsStateCopyWithImpl<$Res>
    extends _$MainContentsStateCopyWithImpl<$Res>
    implements _$MainContentsStateCopyWith<$Res> {
  __$MainContentsStateCopyWithImpl(
      _MainContentsState _value, $Res Function(_MainContentsState) _then)
      : super(_value, (v) => _then(v as _MainContentsState));

  @override
  _MainContentsState get _value => super._value as _MainContentsState;

  @override
  $Res call({
    Object contents = freezed,
    Object page = freezed,
    Object hasReachedEndOfResults = freezed,
    Object onRetry = freezed,
  }) {
    return _then(_MainContentsState(
      contents: contents == freezed
          ? _value.contents
          : contents as List<PersonalizedContent>,
      page: page == freezed ? _value.page : page as int,
      hasReachedEndOfResults: hasReachedEndOfResults == freezed
          ? _value.hasReachedEndOfResults
          : hasReachedEndOfResults as bool,
      onRetry: onRetry == freezed ? _value.onRetry : onRetry as Function,
    ));
  }
}

/// @nodoc
class _$_MainContentsState
    with DiagnosticableTreeMixin
    implements _MainContentsState {
  _$_MainContentsState(
      {@required this.contents,
      @required this.page,
      @required this.hasReachedEndOfResults,
      @nullable this.onRetry})
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
  @nullable
  final Function onRetry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainContentsState(contents: $contents, page: $page, hasReachedEndOfResults: $hasReachedEndOfResults, onRetry: $onRetry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainContentsState'))
      ..add(DiagnosticsProperty('contents', contents))
      ..add(DiagnosticsProperty('page', page))
      ..add(
          DiagnosticsProperty('hasReachedEndOfResults', hasReachedEndOfResults))
      ..add(DiagnosticsProperty('onRetry', onRetry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainContentsState &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.hasReachedEndOfResults, hasReachedEndOfResults) ||
                const DeepCollectionEquality().equals(
                    other.hasReachedEndOfResults, hasReachedEndOfResults)) &&
            (identical(other.onRetry, onRetry) ||
                const DeepCollectionEquality().equals(other.onRetry, onRetry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(hasReachedEndOfResults) ^
      const DeepCollectionEquality().hash(onRetry);

  @override
  _$MainContentsStateCopyWith<_MainContentsState> get copyWith =>
      __$MainContentsStateCopyWithImpl<_MainContentsState>(this, _$identity);
}

abstract class _MainContentsState implements MainContentsState {
  factory _MainContentsState(
      {@required List<PersonalizedContent> contents,
      @required int page,
      @required bool hasReachedEndOfResults,
      @nullable Function onRetry}) = _$_MainContentsState;

  @override
  List<PersonalizedContent> get contents;
  @override
  int get page;
  @override
  bool get hasReachedEndOfResults;
  @override
  @nullable
  Function get onRetry;
  @override
  _$MainContentsStateCopyWith<_MainContentsState> get copyWith;
}
