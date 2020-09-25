import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "search_for_content_event.freezed.dart";

@freezed
abstract class SearchForContentEvent with _$SearchForContentEvent {
  const factory SearchForContentEvent.fetchRecommendedContent(
      {@required int page}) = FetchRecommendedContent;
  const factory SearchForContentEvent.fetchContentForQuery(
      {@required String query, @required int page}) = FetchContentForQuery;
}
