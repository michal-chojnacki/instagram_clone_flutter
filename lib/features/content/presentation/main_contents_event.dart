import 'package:meta/meta.dart';

abstract class MainContentsEvent {}

class FetchMainContents extends MainContentsEvent {
  final int page;

  FetchMainContents({
    @required this.page,
  });
}