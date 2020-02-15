import 'package:super_enum/super_enum.dart';

part "send_content_event.g.dart";

@superEnum
enum _SendContentEvent {
  @Data(fields: [
    DataField<String>('message'),
    DataField<String>('imagePath'),
  ])
  SendContent,
}