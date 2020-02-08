import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raw_image.g.dart';

abstract class RawImage implements Built<RawImage, RawImageBuilder> {
  @nullable String get url;

  RawImage._();

  factory RawImage([updates(RawImageBuilder b)]) = _$RawImage;

  static Serializer<RawImage> get serializer =>
      _$rawImageSerializer;
}