import 'package:built_value/built_value.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../model/image.dart';
import '../model/user.dart';

part 'content.g.dart';

abstract class Content extends Object
    with EquatableMixin
    implements Built<Content, ContentBuilder> {
  int get id;

  Image get image;

  String get description;

  User get owner;

  int get likesCount;

  int get publicationTimestamp;

  Content._();

  factory Content([updates(ContentBuilder b)]) = _$Content;

  factory Content.create(
      {@required int id,
      @required Image image,
      @required String description,
      @required User owner,
      @required int likesCount,
      @required int publicationTimestamp}) {
    return Content((b) => b
      ..id = id
      ..image = image.toBuilder()
      ..description = description
      ..owner = owner.toBuilder()
      ..likesCount = likesCount
      ..publicationTimestamp = publicationTimestamp);
  }

  @override
  List<Object> get props =>
      [id, image, description, owner, likesCount, publicationTimestamp];
}
