import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/features/content/presentation/main_contents_bloc.dart';
import 'package:instagram_clone/features/content/presentation/main_contents_state.dart';
import 'package:instagram_clone/features/content/presentation/widget/content_item.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class MainContentsPage extends StatefulWidget {
  _MainContentsPagePageState createState() => _MainContentsPagePageState();
}

class _MainContentsPagePageState extends State<MainContentsPage> {
  final _mainContentsBloc = kiwi.Container().resolve<MainContentsBloc>();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _mainContentsBloc.getNextListPage();
  }

  @override
  void dispose() {
    super.dispose();
    _mainContentsBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InstagramClone'),
      ),
      body: BlocBuilder(
          bloc: _mainContentsBloc,
          builder: (context, MainContentsState state) {
            if (state.contents.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                      itemCount: calculateListItemCount(state),
                      controller: _scrollController,
                      itemBuilder: (context, index) {
                        return index >= state.contents.length
                            ? _buildLoaderListItem()
                            : ContentItem(state.contents[index]);
                      }));
            }
          }),
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      _mainContentsBloc.getNextListPage();
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

  Widget _buildLoaderListItem() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
