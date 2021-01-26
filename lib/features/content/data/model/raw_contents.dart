import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/data/model/raw_content.dart';

part 'raw_contents.freezed.dart';
part 'raw_contents.g.dart';

@freezed
abstract class RawContents with _$RawContents {
  factory RawContents({
    @nullable List<RawContent> contents,
    @nullable int page,
    @nullable int pages,
  }) = _RawContents;

  factory RawContents.fromJson(Map<String, dynamic> json) =>
      _$RawContentsFromJson(json);
}
