import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:super_enum/super_enum.dart';

part "user_contents_grid_event.g.dart";

@superEnum
enum _UserContentsGridEvent {
  @Data(fields: [
    DataField<User>('user'),
  ])
  FetchUserContent,
  @object
  FetchCurrentUserContent,
}
