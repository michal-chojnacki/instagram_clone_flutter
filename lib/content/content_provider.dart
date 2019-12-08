import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_clone/content/model/content.dart';
import 'package:instagram_clone/content/model/image.dart' as content;

class ContentProvider with ChangeNotifier {
  final String authToken;
  List<Content> _contents = [];

  ContentProvider({
    @required this.authToken,
  });

  List<Content> get contents {
    return [..._contents];
  }

  Future<void> getContent() async {
    _contents = [Content(
      image: content.Image(url: "https://pliki.meczyki.pl/big700/316/5de549200ac5c.jpg"),
      description: "desc",
    ),
      Content(
        image: content.Image(url: "https://pliki.meczyki.pl/big700/316/5de549200ac5c.jpg"),
        description: "desc",
      )];
//    try {
//      final url =
//          'https://flutter-update.firebaseio.com/products.json?auth=$authToken';
//      final favoriteResponse = await http.get(url);
//      final favoriteData = json.decode(favoriteResponse.body);
//      return favoriteData;
//    } catch (error) {
//      throw (error);
//    }
  }
}
