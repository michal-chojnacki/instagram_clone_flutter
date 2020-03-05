import 'package:super_enum/super_enum.dart';

part "search_for_content_event.g.dart";

@superEnum
enum _SearchForContentEvent {
  @Data(fields: [
    DataField<int>('page'),
  ])
  FetchRecommendedContent,
  @Data(fields: [
    DataField<String>('query'),
    DataField<int>('page'),
  ])
  FetchContentForQuery,
}
