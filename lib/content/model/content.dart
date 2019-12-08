import 'package:flutter/foundation.dart';
import 'package:instagram_clone/content/model/image.dart';

class Content {
  final Image image;
  final String description;

  const Content({
    @required this.image,
    @required this.description,
  });
}