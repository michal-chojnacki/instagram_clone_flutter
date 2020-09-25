import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "main_contents_event.freezed.dart";

@freezed
abstract class MainContentsEvent with _$MainContentsEvent {
  const factory MainContentsEvent.fetchMainContents({@required int page}) =
      FetchMainContents;
}
