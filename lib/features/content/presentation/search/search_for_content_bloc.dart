import 'package:flutter/foundation.dart';
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
      : super(SearchForContentState.loading());

  void fetchRecommendedContent({int page = 0}) {
    add(SearchForContentEvent.fetchRecommendedContent(page: page));
  }

  void fetchContentForQuery({@required String query, int page = 0}) {
    add(SearchForContentEvent.fetchContentForQuery(query: query, page: page));
  }

  @override
  Stream<SearchForContentState> mapEventToState(SearchForContentEvent event) {
    return event.when(
        fetchRecommendedContent: (int page) =>
            _mapFetchRecommendedContent(page),
        fetchContentForQuery: (String query, int page) =>
            _mapFetchContentForQuery(query, page));
  }

  Stream<SearchForContentState> _mapFetchRecommendedContent(int page) async* {
    if (page == 0) {
      yield SearchForContentState.loading();
    }
    yield (await _getRecommendedContent(page)).when(success: (data) {
      return SearchForContentState.success(state.contents + data.list.toList(),
          data.page, data.page + 1 >= data.pages);
    }, error: (result) {
      return SearchForContentState.error(
          () => fetchRecommendedContent(page: page), state.contents, page);
    });
  }

  Stream<SearchForContentState> _mapFetchContentForQuery(
      String query, int page) async* {
    if (page == 0) {
      yield SearchForContentState.loading();
    }
    yield (await _getContentWithQuery(query, page)).when(success: (data) {
      return SearchForContentState.success(state.contents + data.list.toList(),
          data.page, data.page + 1 >= data.pages);
    }, error: (result) {
      return SearchForContentState.error(
          () => fetchContentForQuery(page: page, query: query),
          state.contents,
          page);
    });
  }
}
