import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/data/model/raw_image.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';

part 'raw_content.freezed.dart';
part 'raw_content.g.dart';

@freezed
abstract class RawContent with _$RawContent {
  factory RawContent({
    @nullable int id,
    @nullable RawImage image,
    @nullable String description,
    @nullable RawUser owner,
    @nullable int likesCount,
    @nullable int publicationTimestamp,
  }) = _RawContent;

  factory RawContent.fromJson(Map<String, dynamic> json) =>
      _$RawContentFromJson(json);
}
