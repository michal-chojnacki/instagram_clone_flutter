import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'image.freezed.dart';

@freezed
abstract class Image with _$Image {
  factory Image({
    @required String url,
  }) = _Image;
}
