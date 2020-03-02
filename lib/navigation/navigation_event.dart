import 'package:super_enum/super_enum.dart';

part "navigation_event.g.dart";

@superEnum
enum _NavigationEvent {
  @object
  OpenMainUserPage,
  @object
  OpenLoginPage,
  @object
  OpenEditUserPage,
  @Data(fields: [
    DataField<String>('imagePath'),
  ])
  OpenSendContentPage
}
