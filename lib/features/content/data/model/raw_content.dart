import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/features/content/data/model/raw_image.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';

part 'raw_content.g.dart';

abstract class RawContent implements Built<RawContent, RawContentBuilder> {
  @nullable
  String get id;
  @nullable
  RawImage get image;
  @nullable
  String get description;
  @nullable
  RawUser get owner;
  @nullable
  int get publicationTimestamp;

  RawContent._();

  factory RawContent([updates(RawContentBuilder b)]) = _$RawContent;

  static Serializer<RawContent> get serializer => _$rawContentSerializer;
}
