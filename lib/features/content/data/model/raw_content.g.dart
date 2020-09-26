// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawContent _$_$_RawContentFromJson(Map<String, dynamic> json) {
  return _$_RawContent(
    id: json['id'] as int,
    image: json['image'] == null
        ? null
        : RawImage.fromJson(json['image'] as Map<String, dynamic>),
    description: json['description'] as String,
    owner: json['owner'] == null
        ? null
        : RawUser.fromJson(json['owner'] as Map<String, dynamic>),
    likesCount: json['likesCount'] as int,
    publicationTimestamp: json['publicationTimestamp'] as int,
  );
}

Map<String, dynamic> _$_$_RawContentToJson(_$_RawContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
      'owner': instance.owner,
      'likesCount': instance.likesCount,
      'publicationTimestamp': instance.publicationTimestamp,
    };
