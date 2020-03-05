import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/get_content_with_query_use_case.dart';
import 'package:instagram_clone/features/content/domain/get_recommended_content_use_case.dart';
import 'package:instagram_clone/features/content/presentation/search/search_for_content_event.dart';
import 'package:instagram_clone/features/content/presentation/search/search_for_content_state.dart';

@injectable
class SearchForContentBloc
    extends Bloc<SearchForContentEvent, SearchForContentState> {
  final GetContentWithQueryUseCase _getContentWithQuery;
  final GetRecommendedContentUseCase _getRecommendedContent;
  int currentPage = 0;

  SearchForContentBloc(this._getContentWithQuery, this._getRecommendedContent);

  void fetchRecommendedContent({@required bool clearedQuery}) {
    if (clearedQuery) {
      currentPage = 0;
    }
    if (currentPage != null) {
      add(SearchForContentEvent.fetchRecommendedContent(page: currentPage));
      currentPage += 1;
    }
  }

  void fetchContentForQuery({@required String query, @required bool newQuery}) {
    if (newQuery) {
      currentPage = 0;
    }
    if (currentPage != null) {
      add(SearchForContentEvent.fetchContentForQuery(
          query: query, page: currentPage));
      currentPage += 1;
    }
  }

  @override
  SearchForContentState get initialState => SearchForContentState.initial();

  @override
  Stream<SearchForContentState> mapEventToState(SearchForContentEvent event) {
    return event.when(
        fetchRecommendedContent: (event) => _mapFetchRecommendedContent(event),
        fetchContentForQuery: (event) => _mapFetchContentForQuery(event));
  }

  Stream<SearchForContentState> _mapFetchRecommendedContent(
      FetchRecommendedContent event) async* {
    yield SearchForContentState.loading();
    yield (await _getRecommendedContent(event.page)).when(success: (result) {
      return SearchForContentState.success(
          state.contents + BuiltList.of(result.data));
    }, error: (result) {
      currentPage = null;
      return state;
    });
  }

  Stream<SearchForContentState> _mapFetchContentForQuery(
      FetchContentForQuery event) async* {
    yield SearchForContentState.loading();
    yield (await _getContentWithQuery(event.query, event.page)).when(
        success: (result) {
          return SearchForContentState.success(
          state.contents + BuiltList.of(result.data));
    }, error: (result) {
      currentPage = null;
      return state;
    });
  }
}
