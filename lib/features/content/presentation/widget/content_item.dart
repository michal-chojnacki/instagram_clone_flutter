import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

class ContentItem extends StatelessWidget {
  final Content _content;

  ContentItem(this._content);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.network(
                _content.image.url
              ),
              Text(_content.description),
            ],
          )
      ),
    );
  }
}