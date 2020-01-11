import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/features/content/domain/load_main_content.dart';
import 'package:instagram_clone/features/content/presentation/main_contents_event.dart';
import 'package:instagram_clone/features/content/presentation/main_contents_state.dart';

class MainContentsBloc extends Bloc<MainContentsEvent, MainContentsState> {
  final LoadMainContent _loadMainContent;
  int _currentPage = -1;
  int _pageSize;

  MainContentsBloc(this._loadMainContent, this._pageSize);

  void getNextListPage() {
    _currentPage += 1;
    dispatch(FetchMainContents(page:_currentPage));
  }

  @override
  MainContentsState get initialState => MainContentsState.initial();

  @override
  Stream<MainContentsState> mapEventToState(MainContentsEvent event) async* {
    if (event is FetchMainContents) {
      try {
        yield (await _loadMainContent(Params(page: event.page))).fold((exception) {
          return currentState.rebuild((b) => b..hasReachedEndOfResults = true);
        }, (contents) {
          return MainContentsState.success(currentState.contents + BuiltList.of(contents),  contents.length < _pageSize);
        });
      } on NoNextPageException catch (_) {
        yield currentState.rebuild((b) => b..hasReachedEndOfResults = true);
      }
    }
  }
}