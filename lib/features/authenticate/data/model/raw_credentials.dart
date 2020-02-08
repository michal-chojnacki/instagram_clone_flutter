import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';

part 'raw_credentials.g.dart';

abstract class RawCredentials
    implements Built<RawCredentials, RawCredentialsBuilder> {
  String get username;
  String get password;

  RawCredentials._();

  factory RawCredentials([updates(RawCredentialsBuilder b)]) = _$RawCredentials;

  factory RawCredentials.create(
      {@required String username, @required String password}) {
    return RawCredentials((b) => b
      ..username = username
      ..password = password);
  }

  static Serializer<RawCredentials> get serializer =>
      _$rawCredentialsSerializer;
}
