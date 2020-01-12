import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/injection_container.dart';
import 'package:instagram_clone/features/content/presentation/page/main_contents_page.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:flutter/foundation.dart';

void main() {
  if(!kReleaseMode) {
    Stetho.initialize();
  }
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