import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Image extends Equatable {
  final String url;

  Image({
    @required this.url,
  }) : super([url]);
}