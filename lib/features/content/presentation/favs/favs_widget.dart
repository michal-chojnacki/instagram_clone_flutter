import 'package:flutter/material.dart';

class FavsWidget extends StatefulWidget {

  @override
  _FavsWidgetState createState() => _FavsWidgetState();
}

class _FavsWidgetState extends State<FavsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: Text('Favs')),
    );
  }
}