import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/features/content/data/model/raw_content.dart';

part 'raw_contents.g.dart';

abstract class RawContents implements Built<RawContents, RawContentsBuilder> {
  @nullable
  BuiltList<RawContent> get contents;
  @nullable
  int get page;
  @nullable
  int get pages;

  RawContents._();

  factory RawContents([updates(RawContentsBuilder b)]) = _$RawContents;

  static Serializer<RawContents> get serializer => _$rawContentsSerializer;
}
