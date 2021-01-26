import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/data/model/raw_image.dart';

part 'raw_user.freezed.dart';
part 'raw_user.g.dart';

@freezed
abstract class RawUser with _$RawUser {
  factory RawUser({
    @nullable int id,
    @nullable String username,
    @nullable String fullname,
    @nullable String bio,
    @nullable int posts,
    @nullable int followers,
    @nullable int followees,
    @nullable RawImage avatar,
  }) = _RawUser;

  factory RawUser.fromJson(Map<String, dynamic> json) =>
      _$RawUserFromJson(json);
}
