import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/core/widgets/show_error_widget.dart';
import 'package:instagram_clone/features/content/presentation/widget/contents_grid.dart';
import 'package:instagram_clone/features/content/presentation/search/search_for_content_bloc.dart';
import 'package:instagram_clone/features/content/presentation/search/search_for_content_state.dart';

class SearchForContentWidget extends StatefulWidget {
  @override
  _SearchForContentWidgetState createState() => _SearchForContentWidgetState();
}

class _SearchForContentWidgetState extends State<SearchForContentWidget> {
  final SearchForContentBloc _searchForContentBloc =
      GetIt.I<SearchForContentBloc>();
  final TextEditingController _editingController = TextEditingController();
  FocusNode _queryFocusNode;
  Function getNextPage;

  @override
  void initState() {
    super.initState();
    _onClearQuery();
    _queryFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchForContentBloc.close();
    _editingController.dispose();
    _queryFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () =>
                FocusScope.of(context).requestFocus(_queryFocusNode),
          ),
          title: TextField(
            focusNode: _queryFocusNode,
            controller: _editingController,
            decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.white30),
            ),
            style: TextStyle(color: Colors.white, fontSize: 16.0),
            onSubmitted: _onQuerySubmitted,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: _onClearQuery,
            )
          ],
        ),
        body: BlocBuilder<SearchForContentBloc, SearchForContentState>(
            cubit: _searchForContentBloc,
            builder: (context, SearchForContentState state) {
              if (state.onRetry != null) {
                return ShowErrorWidget(onTryAgainPressed: state.onRetry);
              } else if (state.contents.isEmpty &&
                  state.hasReachedEndOfResults) {
                return Center(
                  child: Text('No content found with current query.'),
                );
              } else {
                return ContentsGrid(
                  contents: state.contents.toList(),
                  loading:
                      state.contents.isEmpty && !state.hasReachedEndOfResults,
                  page: state.page,
                  hasReachedEndOfResults: state.hasReachedEndOfResults,
                  getNextPage: getNextPage,
                );
              }
            }));
  }

  void _onQuerySubmitted(String query) {
    getNextPage = (page) =>
        {_searchForContentBloc.fetchContentForQuery(query: query, page: page)};
    getNextPage(0);
  }

  void _onClearQuery() {
    _editingController.text = '';
    getNextPage =
        (page) => {_searchForContentBloc.fetchRecommendedContent(page: page)};
    getNextPage(0);
  }
}
