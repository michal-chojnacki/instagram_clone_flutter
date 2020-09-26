// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawUser _$_$_RawUserFromJson(Map<String, dynamic> json) {
  return _$_RawUser(
    id: json['id'] as int,
    username: json['username'] as String,
    fullname: json['fullname'] as String,
    bio: json['bio'] as String,
    posts: json['posts'] as int,
    followers: json['followers'] as int,
    followees: json['followees'] as int,
    avatar: json['avatar'] == null
        ? null
        : RawImage.fromJson(json['avatar'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RawUserToJson(_$_RawUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullname': instance.fullname,
      'bio': instance.bio,
      'posts': instance.posts,
      'followers': instance.followers,
      'followees': instance.followees,
      'avatar': instance.avatar,
    };
