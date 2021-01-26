import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_credentials.freezed.dart';
part 'raw_credentials.g.dart';

@freezed
abstract class RawCredentials with _$RawCredentials {
  factory RawCredentials({
    @required String username,
    @required String password,
  }) = _RawCredentials;

  factory RawCredentials.fromJson(Map<String, dynamic> json) =>
      _$RawCredentialsFromJson(json);
}
