// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawContents _$_$_RawContentsFromJson(Map<String, dynamic> json) {
  return _$_RawContents(
    contents: (json['contents'] as List)
        ?.map((e) =>
            e == null ? null : RawContent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] as int,
    pages: json['pages'] as int,
  );
}

Map<String, dynamic> _$_$_RawContentsToJson(_$_RawContents instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'page': instance.page,
      'pages': instance.pages,
    };
