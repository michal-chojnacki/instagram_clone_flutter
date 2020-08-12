import 'package:super_enum/super_enum.dart';

part "content_item_event.g.dart";

@superEnum
enum _ContentItemEvent {
  @Data(fields: [
    DataField<bool>('liked'),
    DataField<int>('contentId'),
  ])
  ChangeLikeStatus,
}
