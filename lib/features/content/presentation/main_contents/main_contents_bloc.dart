import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/get_main_content_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_event.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_state.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@injectable
class MainContentsBloc extends Bloc<MainContentsEvent, MainContentsState> {
  final NavigationBloc _navigationBloc;
  final GetMainContentUseCase _getMainContent;

  MainContentsBloc(this._navigationBloc, this._getMainContent)
      : super(MainContentsState.initial());

  void getNextListPage({int page = 0}) {
    add(MainContentsEvent.fetchMainContents(page: page));
  }

  void openUserProfilePage({@required User user}) {
    _navigationBloc.openUserProfilePage(user: user);
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
            state.contents + BuiltList.of(result.data.list),
            result.data.page,
            result.data.page + 1 >= result.data.pages),
        error: (result) =>
            state.rebuild((b) => b.hasReachedEndOfResults = true));
  }
}
