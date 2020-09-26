// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_for_content_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchForContentEventTearOff {
  const _$SearchForContentEventTearOff();

// ignore: unused_element
  FetchRecommendedContent fetchRecommendedContent({@required int page}) {
    return FetchRecommendedContent(
      page: page,
    );
  }

// ignore: unused_element
  FetchContentForQuery fetchContentForQuery(
      {@required String query, @required int page}) {
    return FetchContentForQuery(
      query: query,
      page: page,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchForContentEvent = _$SearchForContentEventTearOff();

/// @nodoc
mixin _$SearchForContentEvent {
  int get page;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRecommendedContent(int page),
    @required Result fetchContentForQuery(String query, int page),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRecommendedContent(int page),
    Result fetchContentForQuery(String query, int page),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRecommendedContent(FetchRecommendedContent value),
    @required Result fetchContentForQuery(FetchContentForQuery value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRecommendedContent(FetchRecommendedContent value),
    Result fetchContentForQuery(FetchContentForQuery value),
    @required Result orElse(),
  });

  $SearchForContentEventCopyWith<SearchForContentEvent> get copyWith;
}

/// @nodoc
abstract class $SearchForContentEventCopyWith<$Res> {
  factory $SearchForContentEventCopyWith(SearchForContentEvent value,
          $Res Function(SearchForContentEvent) then) =
      _$SearchForContentEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$SearchForContentEventCopyWithImpl<$Res>
    implements $SearchForContentEventCopyWith<$Res> {
  _$SearchForContentEventCopyWithImpl(this._value, this._then);

  final SearchForContentEvent _value;
  // ignore: unused_field
  final $Res Function(SearchForContentEvent) _then;

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
abstract class $FetchRecommendedContentCopyWith<$Res>
    implements $SearchForContentEventCopyWith<$Res> {
  factory $FetchRecommendedContentCopyWith(FetchRecommendedContent value,
          $Res Function(FetchRecommendedContent) then) =
      _$FetchRecommendedContentCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class _$FetchRecommendedContentCopyWithImpl<$Res>
    extends _$SearchForContentEventCopyWithImpl<$Res>
    implements $FetchRecommendedContentCopyWith<$Res> {
  _$FetchRecommendedContentCopyWithImpl(FetchRecommendedContent _value,
      $Res Function(FetchRecommendedContent) _then)
      : super(_value, (v) => _then(v as FetchRecommendedContent));

  @override
  FetchRecommendedContent get _value => super._value as FetchRecommendedContent;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(FetchRecommendedContent(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$FetchRecommendedContent
    with DiagnosticableTreeMixin
    implements FetchRecommendedContent {
  const _$FetchRecommendedContent({@required this.page}) : assert(page != null);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchForContentEvent.fetchRecommendedContent(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SearchForContentEvent.fetchRecommendedContent'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchRecommendedContent &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $FetchRecommendedContentCopyWith<FetchRecommendedContent> get copyWith =>
      _$FetchRecommendedContentCopyWithImpl<FetchRecommendedContent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRecommendedContent(int page),
    @required Result fetchContentForQuery(String query, int page),
  }) {
    assert(fetchRecommendedContent != null);
    assert(fetchContentForQuery != null);
    return fetchRecommendedContent(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRecommendedContent(int page),
    Result fetchContentForQuery(String query, int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRecommendedContent != null) {
      return fetchRecommendedContent(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRecommendedContent(FetchRecommendedContent value),
    @required Result fetchContentForQuery(FetchContentForQuery value),
  }) {
    assert(fetchRecommendedContent != null);
    assert(fetchContentForQuery != null);
    return fetchRecommendedContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRecommendedContent(FetchRecommendedContent value),
    Result fetchContentForQuery(FetchContentForQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRecommendedContent != null) {
      return fetchRecommendedContent(this);
    }
    return orElse();
  }
}

abstract class FetchRecommendedContent implements SearchForContentEvent {
  const factory FetchRecommendedContent({@required int page}) =
      _$FetchRecommendedContent;

  @override
  int get page;
  @override
  $FetchRecommendedContentCopyWith<FetchRecommendedContent> get copyWith;
}

/// @nodoc
abstract class $FetchContentForQueryCopyWith<$Res>
    implements $SearchForContentEventCopyWith<$Res> {
  factory $FetchContentForQueryCopyWith(FetchContentForQuery value,
          $Res Function(FetchContentForQuery) then) =
      _$FetchContentForQueryCopyWithImpl<$Res>;
  @override
  $Res call({String query, int page});
}

/// @nodoc
class _$FetchContentForQueryCopyWithImpl<$Res>
    extends _$SearchForContentEventCopyWithImpl<$Res>
    implements $FetchContentForQueryCopyWith<$Res> {
  _$FetchContentForQueryCopyWithImpl(
      FetchContentForQuery _value, $Res Function(FetchContentForQuery) _then)
      : super(_value, (v) => _then(v as FetchContentForQuery));

  @override
  FetchContentForQuery get _value => super._value as FetchContentForQuery;

  @override
  $Res call({
    Object query = freezed,
    Object page = freezed,
  }) {
    return _then(FetchContentForQuery(
      query: query == freezed ? _value.query : query as String,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$FetchContentForQuery
    with DiagnosticableTreeMixin
    implements FetchContentForQuery {
  const _$FetchContentForQuery({@required this.query, @required this.page})
      : assert(query != null),
        assert(page != null);

  @override
  final String query;
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchForContentEvent.fetchContentForQuery(query: $query, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SearchForContentEvent.fetchContentForQuery'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchContentForQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(page);

  @override
  $FetchContentForQueryCopyWith<FetchContentForQuery> get copyWith =>
      _$FetchContentForQueryCopyWithImpl<FetchContentForQuery>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRecommendedContent(int page),
    @required Result fetchContentForQuery(String query, int page),
  }) {
    assert(fetchRecommendedContent != null);
    assert(fetchContentForQuery != null);
    return fetchContentForQuery(query, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRecommendedContent(int page),
    Result fetchContentForQuery(String query, int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchContentForQuery != null) {
      return fetchContentForQuery(query, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRecommendedContent(FetchRecommendedContent value),
    @required Result fetchContentForQuery(FetchContentForQuery value),
  }) {
    assert(fetchRecommendedContent != null);
    assert(fetchContentForQuery != null);
    return fetchContentForQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRecommendedContent(FetchRecommendedContent value),
    Result fetchContentForQuery(FetchContentForQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchContentForQuery != null) {
      return fetchContentForQuery(this);
    }
    return orElse();
  }
}

abstract class FetchContentForQuery implements SearchForContentEvent {
  const factory FetchContentForQuery(
      {@required String query, @required int page}) = _$FetchContentForQuery;

  String get query;
  @override
  int get page;
  @override
  $FetchContentForQueryCopyWith<FetchContentForQuery> get copyWith;
}
