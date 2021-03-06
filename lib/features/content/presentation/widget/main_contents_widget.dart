import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:instagram_clone/core/widgets/show_error_widget.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_bloc.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_state.dart';
import 'package:instagram_clone/features/content/presentation/widget/content_item_widget.dart';

class MainContentsWidget extends StatefulWidget {
  @override
  _MainContentsWidgetState createState() => _MainContentsWidgetState();
}

class _MainContentsWidgetState extends State<MainContentsWidget> {
  final _mainContentsBloc = GetIt.I<MainContentsBloc>();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _mainContentsBloc.getNextListPage();
  }

  @override
  void dispose() {
    super.dispose();
    _mainContentsBloc.close();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: BlocBuilder<MainContentsBloc, MainContentsState>(
          cubit: _mainContentsBloc,
          builder: (context, MainContentsState state) {
            if (state.page == 0 && state.onRetry != null) {
              return ShowErrorWidget(onTryAgainPressed: state.onRetry);
            } else if (state.contents.isEmpty) {
              return Center(
                child: state.hasReachedEndOfResults
                    ? Text('There is no content...')
                    : CircularProgressIndicator(),
              );
            } else {
              return NotificationListener<ScrollNotification>(
                  onNotification: (notification) =>
                      _handleScrollNotification(notification, state),
                  child: ListView.builder(
                      itemCount: calculateListItemCount(state),
                      controller: _scrollController,
                      itemBuilder: (context, index) {
                        return index >= state.contents.length
                            ? _buildLoaderListItem(state.onRetry)
                            : ContentItemWidget(
                                personalizedContent: state.contents[index],
                              );
                      }));
            }
          }),
    );
  }

  bool _handleScrollNotification(
      ScrollNotification notification, MainContentsState state) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0 &&
        !state.hasReachedEndOfResults) {
      _mainContentsBloc.getNextListPage(page: state.page + 1);
    }

    return false;
  }

  int calculateListItemCount(MainContentsState state) {
    if (state.hasReachedEndOfResults) {
      return state.contents.length;
    } else {
      // + 1 for the loading indicator
      return state.contents.length + 1;
    }
  }

  Widget _buildLoaderListItem(Function onRetry) {
    if (onRetry != null) {
      return ShowErrorWidget(
          text: 'There was problem loading more content',
          onTryAgainPressed: onRetry);
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
