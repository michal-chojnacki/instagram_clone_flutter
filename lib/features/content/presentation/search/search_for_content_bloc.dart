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

  SearchForContentBloc(this._getContentWithQuery, this._getRecommendedContent)
      : super(SearchForContentState.initial());

  void fetchRecommendedContent({int page = 0}) {
    add(SearchForContentEvent.fetchRecommendedContent(page: page));
  }

  void fetchContentForQuery({@required String query, int page = 0}) {
    add(SearchForContentEvent.fetchContentForQuery(query: query, page: page));
  }

  @override
  Stream<SearchForContentState> mapEventToState(SearchForContentEvent event) {
    return event.when(
        fetchRecommendedContent: (event) => _mapFetchRecommendedContent(event),
        fetchContentForQuery: (event) => _mapFetchContentForQuery(event));
  }

  Stream<SearchForContentState> _mapFetchRecommendedContent(
      FetchRecommendedContent event) async* {
    if (event.page == 0) {
      yield SearchForContentState.loading();
    }
    yield (await _getRecommendedContent(event.page)).when(success: (result) {
      return SearchForContentState.success(
          state.contents + BuiltList.of(result.data.list),
          result.data.page,
          result.data.page + 1 >= result.data.pages);
    }, error: (result) {
      return state.rebuild((b) => b.hasReachedEndOfResults = true);
    });
  }

  Stream<SearchForContentState> _mapFetchContentForQuery(
      FetchContentForQuery event) async* {
    if (event.page == 0) {
      yield SearchForContentState.loading();
    }
    yield (await _getContentWithQuery(event.query, event.page)).when(
        success: (result) {
      return SearchForContentState.success(
          state.contents + BuiltList.of(result.data.list),
          result.data.page,
          result.data.page + 1 >= result.data.pages);
    }, error: (result) {
      return state.rebuild((b) => b.hasReachedEndOfResults = true);
    });
  }
}
