import 'package:super_enum/super_enum.dart';

part "login_page_event.g.dart";

@superEnum
enum _LoginPageEvent {
  @Data(fields: [
    DataField<String>('username'),
    DataField<String>('password'),
  ])
  AuthenticateUser,
}