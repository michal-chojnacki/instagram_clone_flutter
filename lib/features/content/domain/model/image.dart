import 'package:built_value/built_value.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'image.g.dart';

abstract class Image extends Object with EquatableMixin implements Built<Image, ImageBuilder> {
  String get url;

  Image._();

  factory Image([updates(ImageBuilder b)]) = _$Image;

  factory Image.create({@required String url}) {
    return Image((b) => b..url = url);
  }

  @override
  List<Object> get props => [url];
}
