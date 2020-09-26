// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_like_statuses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawLikeStatuses _$_$_RawLikeStatusesFromJson(Map<String, dynamic> json) {
  return _$_RawLikeStatuses(
    statuses: (json['statuses'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$_$_RawLikeStatusesToJson(_$_RawLikeStatuses instance) =>
    <String, dynamic>{
      'statuses': instance.statuses?.map((k, e) => MapEntry(k.toString(), e)),
    };
