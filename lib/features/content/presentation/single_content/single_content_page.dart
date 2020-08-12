import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_widget.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

class SingleContentPage extends StatelessWidget {
  final PersonalizedContent content;

  SingleContentPage({@required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: SingleChildScrollView(
        child: ContentItemWidget(
          personalizedContent: content,
        ),
      ),
    );
  }
}
