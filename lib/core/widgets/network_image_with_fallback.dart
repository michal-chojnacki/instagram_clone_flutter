import 'package:flutter/material.dart';

class NetworkImageWithFallback extends ImageProvider {
  ImageProvider _imageProvider;

  NetworkImageWithFallback(String src) {
    _imageProvider = (src != null && src.isNotEmpty)
        ? NetworkImage(src)
        : AssetImage('assets/logo.png');
  }

  @override
  ImageStreamCompleter load(key, decode) {
    return _imageProvider.load(key, decode);
  }

  @override
  Future obtainKey(ImageConfiguration configuration) {
    return _imageProvider.obtainKey(configuration);
  }
}
