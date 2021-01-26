import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'personalized_content.freezed.dart';

@freezed
abstract class PersonalizedContent with _$PersonalizedContent {
  factory PersonalizedContent({
    @required Content content,
    @required bool liked,
  }) = _PersonalizedContent;
}
