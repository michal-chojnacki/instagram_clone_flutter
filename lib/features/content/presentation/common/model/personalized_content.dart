import 'package:built_value/built_value.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

part 'personalized_content.g.dart';

abstract class PersonalizedContent extends Object with EquatableMixin implements Built<PersonalizedContent, PersonalizedContentBuilder> {
  bool get liked;

  Content get content;

  PersonalizedContent._();

  factory PersonalizedContent([updates(PersonalizedContentBuilder b)]) = _$PersonalizedContent;

  factory PersonalizedContent.create(
      {@required Content content,
        @required bool liked,}) {
    return PersonalizedContent((b) => b
      ..content = content.toBuilder()
      ..liked = liked);
  }

  @override
  List<Object> get props => [liked, content];
}
