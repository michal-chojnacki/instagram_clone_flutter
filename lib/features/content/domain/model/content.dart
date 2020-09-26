import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../model/image.dart';
import '../model/user.dart';

part 'content.freezed.dart';

@freezed
abstract class Content with _$Content {
  factory Content(
      {@required int id,
      @required Image image,
      @required String description,
      @required User owner,
      @required int likesCount,
      @required int publicationTimestamp}) = _Content;
}
