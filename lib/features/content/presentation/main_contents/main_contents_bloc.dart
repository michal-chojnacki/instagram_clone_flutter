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
    return event.when(fetchMainContents: (page) => _mapFetchMainContents(page));
  }

  Stream<MainContentsState> _mapFetchMainContents(int page) async* {
    yield (await _getMainContent(page)).when(
        success: (data) => MainContentsState.success(
            state.contents + BuiltList.of(data.list),
            data.page,
            data.page + 1 >= data.pages),
        error: (result) =>
            state.rebuild((b) => b.hasReachedEndOfResults = true));
  }
}
