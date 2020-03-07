import 'package:flutter/material.dart';

class FavsWidget extends StatefulWidget {

  @override
  _FavsWidgetState createState() => _FavsWidgetState();
}

class _FavsWidgetState extends State<FavsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: Container(
         child: Center(child: Text('Favs')),
      ),
    );
  }
}