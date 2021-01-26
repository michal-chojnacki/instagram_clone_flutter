import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/domain/model/image.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  factory User({
    @required int id,
    @required String username,
    @required String fullname,
    @required String bio,
    @required int posts,
    @required int followers,
    @required int followees,
    @required Image avatar,
  }) = _User;
}
