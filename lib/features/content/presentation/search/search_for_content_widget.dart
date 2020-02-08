import 'package:flutter/material.dart';

class SearchForContentWidget extends StatefulWidget {

  @override
  _SearchForContentWidgetState createState() => _SearchForContentWidgetState();
}

class _SearchForContentWidgetState extends State<SearchForContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: Text('Search for content')),
    );
  }
}