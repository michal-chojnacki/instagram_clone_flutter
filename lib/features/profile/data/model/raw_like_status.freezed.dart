// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_like_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawLikeStatus _$RawLikeStatusFromJson(Map<String, dynamic> json) {
  return _RawLikeStatus.fromJson(json);
}

/// @nodoc
class _$RawLikeStatusTearOff {
  const _$RawLikeStatusTearOff();

// ignore: unused_element
  _RawLikeStatus call({@nullable bool status, @nullable int contentId}) {
    return _RawLikeStatus(
      status: status,
      contentId: contentId,
    );
  }

// ignore: unused_element
  RawLikeStatus fromJson(Map<String, Object> json) {
    return RawLikeStatus.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawLikeStatus = _$RawLikeStatusTearOff();

/// @nodoc
mixin _$RawLikeStatus {
  @nullable
  bool get status;
  @nullable
  int get contentId;

  Map<String, dynamic> toJson();
  $RawLikeStatusCopyWith<RawLikeStatus> get copyWith;
}

/// @nodoc
abstract class $RawLikeStatusCopyWith<$Res> {
  factory $RawLikeStatusCopyWith(
          RawLikeStatus value, $Res Function(RawLikeStatus) then) =
      _$RawLikeStatusCopyWithImpl<$Res>;
  $Res call({@nullable bool status, @nullable int contentId});
}

/// @nodoc
class _$RawLikeStatusCopyWithImpl<$Res>
    implements $RawLikeStatusCopyWith<$Res> {
  _$RawLikeStatusCopyWithImpl(this._value, this._then);

  final RawLikeStatus _value;
  // ignore: unused_field
  final $Res Function(RawLikeStatus) _then;

  @override
  $Res call({
    Object status = freezed,
    Object contentId = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as bool,
      contentId: contentId == freezed ? _value.contentId : contentId as int,
    ));
  }
}

/// @nodoc
abstract class _$RawLikeStatusCopyWith<$Res>
    implements $RawLikeStatusCopyWith<$Res> {
  factory _$RawLikeStatusCopyWith(
          _RawLikeStatus value, $Res Function(_RawLikeStatus) then) =
      __$RawLikeStatusCopyWithImpl<$Res>;
  @override
  $Res call({@nullable bool status, @nullable int contentId});
}

/// @nodoc
class __$RawLikeStatusCopyWithImpl<$Res>
    extends _$RawLikeStatusCopyWithImpl<$Res>
    implements _$RawLikeStatusCopyWith<$Res> {
  __$RawLikeStatusCopyWithImpl(
      _RawLikeStatus _value, $Res Function(_RawLikeStatus) _then)
      : super(_value, (v) => _then(v as _RawLikeStatus));

  @override
  _RawLikeStatus get _value => super._value as _RawLikeStatus;

  @override
  $Res call({
    Object status = freezed,
    Object contentId = freezed,
  }) {
    return _then(_RawLikeStatus(
      status: status == freezed ? _value.status : status as bool,
      contentId: contentId == freezed ? _value.contentId : contentId as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawLikeStatus with DiagnosticableTreeMixin implements _RawLikeStatus {
  _$_RawLikeStatus({@nullable this.status, @nullable this.contentId});

  factory _$_RawLikeStatus.fromJson(Map<String, dynamic> json) =>
      _$_$_RawLikeStatusFromJson(json);

  @override
  @nullable
  final bool status;
  @override
  @nullable
  final int contentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawLikeStatus(status: $status, contentId: $contentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawLikeStatus'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('contentId', contentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawLikeStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.contentId, contentId) ||
                const DeepCollectionEquality()
                    .equals(other.contentId, contentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(contentId);

  @override
  _$RawLikeStatusCopyWith<_RawLikeStatus> get copyWith =>
      __$RawLikeStatusCopyWithImpl<_RawLikeStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawLikeStatusToJson(this);
  }
}

abstract class _RawLikeStatus implements RawLikeStatus {
  factory _RawLikeStatus({@nullable bool status, @nullable int contentId}) =
      _$_RawLikeStatus;

  factory _RawLikeStatus.fromJson(Map<String, dynamic> json) =
      _$_RawLikeStatus.fromJson;

  @override
  @nullable
  bool get status;
  @override
  @nullable
  int get contentId;
  @override
  _$RawLikeStatusCopyWith<_RawLikeStatus> get copyWith;
}
