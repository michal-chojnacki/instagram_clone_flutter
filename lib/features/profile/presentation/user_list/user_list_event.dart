import 'package:super_enum/super_enum.dart';

part "user_list_event.g.dart";

@superEnum
enum _UserListEvent {
  @Data(fields: [
    DataField<int>('page'),
    DataField<int>('userId'),
  ])
  FetchFollowers,
  @Data(fields: [
    DataField<int>('page'),
    DataField<int>('userId'),
  ])
  FetchFollowees,
}
