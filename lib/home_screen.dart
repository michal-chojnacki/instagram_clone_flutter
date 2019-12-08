import 'package:flutter/material.dart';
import 'package:instagram_clone/content/content_provider.dart';
import 'package:instagram_clone/content/model/content.dart';
import 'package:instagram_clone/content_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  Future<void> _refreshContents(BuildContext context) async {
    return await Provider.of<ContentProvider>(context, listen: false)
        .getContent();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _refreshContents(context),
      builder: (ctx, snapshot) =>
      snapshot.connectionState == ConnectionState.waiting
          ? Center(
        child: CircularProgressIndicator(),
      )
          : RefreshIndicator(
        onRefresh: () => _refreshContents(context),
        child: Consumer<ContentProvider>(
          builder: (ctx, contentsData, _) =>
              ListView.builder(
                itemBuilder: (ctx, index) {
                  return ContentItem(
                    content: contentsData.contents[index],
                  );
                },
                itemCount: contentsData.contents.length,
              ),
        ),
      ),
    );
  }
}
