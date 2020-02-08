import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';

part 'credentials.g.dart';

abstract class Credentials implements Built<Credentials, CredentialsBuilder> {
  String get username;
  String get password;

  Credentials._();

  factory Credentials([updates(CredentialsBuilder b)]) = _$Credentials;

  factory Credentials.create({@required String username, @required String password }) {
    return Credentials((b) => b
      ..username = username
      ..password = password);
  }
}