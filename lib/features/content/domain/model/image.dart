import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

@freezed
abstract class Image with _$Image {
  factory Image({
    @required String url,
  }) = _Image;
}
