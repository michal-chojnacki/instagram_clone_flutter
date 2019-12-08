import 'package:flutter/material.dart';
import 'package:instagram_clone/content/model/content.dart';

class ContentItem extends StatelessWidget {
  final Content content;

  const ContentItem({
    @required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.network(
        content.image.url,
      ),
      Text(content.description)
    ]);
  }
}
