import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/features/content/data/model/raw_image.dart';

part 'raw_user.g.dart';

abstract class RawUser 
    implements Built<RawUser, RawUserBuilder> {

  @nullable String get username;
  @nullable RawImage get avatar;

  RawUser._();

  factory RawUser([updates(RawUserBuilder b)]) = _$RawUser;

  static Serializer<RawUser> get serializer =>
      _$rawUserSerializer;
}