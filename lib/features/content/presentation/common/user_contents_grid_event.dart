import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/features/content/domain/model/user.dart';

part 'user_contents_grid_event.freezed.dart';

@freezed
abstract class UserContentsGridEvent with _$UserContentsGridEvent {
  const factory UserContentsGridEvent.fetchUserContent(
      {@required User user, @required int page}) = FetchUserContent;
  const factory UserContentsGridEvent.fetchCurrentUserContent(
      {@required int page}) = FetchCurrentUserContent;
}
