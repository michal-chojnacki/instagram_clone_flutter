import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_token.freezed.dart';
part 'raw_token.g.dart';

@freezed
abstract class RawToken with _$RawToken {
  factory RawToken({
    @nullable String token,
  }) = _RawToken;

  factory RawToken.fromJson(Map<String, dynamic> json) =>
      _$RawTokenFromJson(json);
}
