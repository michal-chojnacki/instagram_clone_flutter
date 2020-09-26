import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'raw_image.freezed.dart';
part 'raw_image.g.dart';

@freezed
abstract class RawImage with _$RawImage {
  factory RawImage({
    @nullable String url,
  }) = _RawImage;

  factory RawImage.fromJson(Map<String, dynamic> json) =>
      _$RawImageFromJson(json);
}
