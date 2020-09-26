// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawUsers _$_$_RawUsersFromJson(Map<String, dynamic> json) {
  return _$_RawUsers(
    users: (json['users'] as List)
        ?.map((e) =>
            e == null ? null : RawUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] as int,
    pages: json['pages'] as int,
  );
}

Map<String, dynamic> _$_$_RawUsersToJson(_$_RawUsers instance) =>
    <String, dynamic>{
      'users': instance.users,
      'page': instance.page,
      'pages': instance.pages,
    };
