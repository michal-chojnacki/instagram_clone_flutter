import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/core/widgets/rounded_square_image.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/main/main_bloc.dart';

class ContentsGrid extends StatefulWidget {
  final List<PersonalizedContent> contents;
  final bool loading;
  final int page;
  final bool hasReachedEndOfResults;
  final Function getNextPage;

  ContentsGrid(
      {@required this.contents,
      this.loading,
      this.page,
      this.hasReachedEndOfResults,
      this.getNextPage});

  @override
  _ContentsGridState createState() => _ContentsGridState();
}

class _ContentsGridState extends State<ContentsGrid> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (widget.loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: widget.contents.length,
            controller: _scrollController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1.0),
            itemBuilder: (context, index) {
              return InkWell(
                child: RoundedSquareImage.network(
                    widget.contents[index].content.image.url),
                onTap: () => context
                    .bloc<MainBloc>()
                    .openSingleContentPage(content: widget.contents[index]),
              );
            }),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0 &&
        !widget.loading &&
        !widget.hasReachedEndOfResults &&
        widget.getNextPage != null) {
      widget.getNextPage(widget.page + 1);
    }

    return false;
  }
}
