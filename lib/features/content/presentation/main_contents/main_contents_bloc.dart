import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:instagram_clone/features/content/domain/get_main_content_use_case.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_event.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_state.dart';

@injectable
class MainContentsBloc extends Bloc<MainContentsEvent, MainContentsState> {
  final GetMainContentUseCase _getMainContent;

  MainContentsBloc(this._getMainContent) : super(MainContentsState.initial());

  void getNextListPage({int page = 0}) {
    add(MainContentsEvent.fetchMainContents(page: page));
  }

  @override
  Stream<MainContentsState> mapEventToState(MainContentsEvent event) {
    return event.when(fetchMainContents: (page) => _mapFetchMainContents(page));
  }

  Stream<MainContentsState> _mapFetchMainContents(int page) async* {
    yield (await _getMainContent(page)).when(
        success: (data) => MainContentsState.success(
            state.contents + data.list.toList(),
            data.page,
            data.page + 1 >= data.pages),
        error: (_) => MainContentsState.error(
            () => getNextListPage(page: page), state.contents, page));
  }
}
