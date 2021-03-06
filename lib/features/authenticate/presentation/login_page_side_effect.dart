import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_side_effect.freezed.dart';

@freezed
abstract class LoginPageSideEffect with _$LoginPageSideEffect {
  factory LoginPageSideEffect.openMainUserPage() = OpenMainUserPage;
}
