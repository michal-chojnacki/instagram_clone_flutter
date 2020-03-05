import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

class ContentsGrid extends StatelessWidget {
  final List<Content> contents;
  final bool loading;

  ContentsGrid({@required this.contents, this.loading});

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return GridView.builder(
          shrinkWrap: true,
          itemCount: contents.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Image.network(contents[index].image.url);
          });
    }
  }

}