import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.freezed.dart';

@freezed
abstract class Credentials with _$Credentials {
  factory Credentials({
    @required String username,
    @required String password,
  }) = _Credentials;
}
