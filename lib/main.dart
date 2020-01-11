import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/injection_container.dart';
import 'package:instagram_clone/features/content/presentation/main_contents_page.dart';

void main() {
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainContentsPage(),
    );
  }
}