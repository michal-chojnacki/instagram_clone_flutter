import 'package:super_enum/super_enum.dart';

part "main_contents_event.g.dart";

@superEnum
enum _MainContentsEvent {
  @Data(fields: [
    DataField<int>('page'),
  ])
  FetchMainContents,
}