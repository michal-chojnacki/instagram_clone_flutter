// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_for_content_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class SearchForContentEvent extends Equatable {
  const SearchForContentEvent(this._type);

  factory SearchForContentEvent.fetchRecommendedContent({@required int page}) =
      FetchRecommendedContent;

  factory SearchForContentEvent.fetchContentForQuery(
      {@required String query, @required int page}) = FetchContentForQuery;

  final _SearchForContentEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(FetchRecommendedContent) fetchRecommendedContent,
      @required R Function(FetchContentForQuery) fetchContentForQuery}) {
    assert(() {
      if (fetchRecommendedContent == null || fetchContentForQuery == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _SearchForContentEvent.FetchRecommendedContent:
        return fetchRecommendedContent(this as FetchRecommendedContent);
      case _SearchForContentEvent.FetchContentForQuery:
        return fetchContentForQuery(this as FetchContentForQuery);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(FetchRecommendedContent) fetchRecommendedContent,
      @required
          FutureOr<R> Function(FetchContentForQuery) fetchContentForQuery}) {
    assert(() {
      if (fetchRecommendedContent == null || fetchContentForQuery == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _SearchForContentEvent.FetchRecommendedContent:
        return fetchRecommendedContent(this as FetchRecommendedContent);
      case _SearchForContentEvent.FetchContentForQuery:
        return fetchContentForQuery(this as FetchContentForQuery);
    }
  }

  R whenOrElse<R>(
      {R Function(FetchRecommendedContent) fetchRecommendedContent,
      R Function(FetchContentForQuery) fetchContentForQuery,
      @required R Function(SearchForContentEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _SearchForContentEvent.FetchRecommendedContent:
        if (fetchRecommendedContent == null) break;
        return fetchRecommendedContent(this as FetchRecommendedContent);
      case _SearchForContentEvent.FetchContentForQuery:
        if (fetchContentForQuery == null) break;
        return fetchContentForQuery(this as FetchContentForQuery);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(FetchRecommendedContent) fetchRecommendedContent,
      FutureOr<R> Function(FetchContentForQuery) fetchContentForQuery,
      @required FutureOr<R> Function(SearchForContentEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _SearchForContentEvent.FetchRecommendedContent:
        if (fetchRecommendedContent == null) break;
        return fetchRecommendedContent(this as FetchRecommendedContent);
      case _SearchForContentEvent.FetchContentForQuery:
        if (fetchContentForQuery == null) break;
        return fetchContentForQuery(this as FetchContentForQuery);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(FetchRecommendedContent) fetchRecommendedContent,
      FutureOr<void> Function(FetchContentForQuery) fetchContentForQuery}) {
    assert(() {
      if (fetchRecommendedContent == null && fetchContentForQuery == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _SearchForContentEvent.FetchRecommendedContent:
        if (fetchRecommendedContent == null) break;
        return fetchRecommendedContent(this as FetchRecommendedContent);
      case _SearchForContentEvent.FetchContentForQuery:
        if (fetchContentForQuery == null) break;
        return fetchContentForQuery(this as FetchContentForQuery);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchRecommendedContent extends SearchForContentEvent {
  const FetchRecommendedContent({@required this.page})
      : super(_SearchForContentEvent.FetchRecommendedContent);

  final int page;

  @override
  String toString() => 'FetchRecommendedContent(page:${this.page})';
  @override
  List get props => [page];
}

@immutable
class FetchContentForQuery extends SearchForContentEvent {
  const FetchContentForQuery({@required this.query, @required this.page})
      : super(_SearchForContentEvent.FetchContentForQuery);

  final String query;

  final int page;

  @override
  String toString() =>
      'FetchContentForQuery(query:${this.query},page:${this.page})';
  @override
  List get props => [query, page];
}
