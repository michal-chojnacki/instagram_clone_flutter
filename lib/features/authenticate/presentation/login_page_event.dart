import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "login_page_event.freezed.dart";

@freezed
abstract class LoginPageEvent with _$LoginPageEvent {
  const factory LoginPageEvent.authenticateUser(
      {@required String username,
      @required String password}) = AuthenticateUser;
  const factory LoginPageEvent.registerUser(
      {@required String username, @required String password}) = RegisterUser;
}
