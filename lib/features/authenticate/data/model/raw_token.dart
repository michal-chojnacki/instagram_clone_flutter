import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raw_token.g.dart';

abstract class RawToken implements Built<RawToken, RawTokenBuilder> {
  @nullable String get token;

  RawToken._();

  factory RawToken([updates(RawTokenBuilder b)]) = _$RawToken;

  static Serializer<RawToken> get serializer =>
      _$rawTokenSerializer;
}