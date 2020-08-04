import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/get_main_content_use_case.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_event.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_state.dart';

@injectable
class MainContentsBloc extends Bloc<MainContentsEvent, MainContentsState> {
  final GetMainContentUseCase _getMainContent;
  int _currentPage = -1;
  int _pageSize = 50;

  MainContentsBloc(this._getMainContent) : super(MainContentsState.initial());

  void getNextListPage() {
    _currentPage += 1;
    add(MainContentsEvent.fetchMainContents(page: _currentPage));
  }

  @override
  Stream<MainContentsState> mapEventToState(MainContentsEvent event) {
    return event.when(
        fetchMainContents: (event) => _mapFetchMainContents(event));
  }

  Stream<MainContentsState> _mapFetchMainContents(
      FetchMainContents event) async* {
    yield (await _getMainContent(event.page)).when(
        success: (result) => MainContentsState.success(
            state.contents + BuiltList.of(result.data),
            result.data.length < _pageSize),
        error: (result) =>
            state.rebuild((b) => b..hasReachedEndOfResults = true));
  }
}
