// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_observing_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawObservingStatus _$RawObservingStatusFromJson(Map<String, dynamic> json) {
  return _RawObservingStatus.fromJson(json);
}

/// @nodoc
class _$RawObservingStatusTearOff {
  const _$RawObservingStatusTearOff();

// ignore: unused_element
  _RawObservingStatus call({@nullable bool status, @nullable int userId}) {
    return _RawObservingStatus(
      status: status,
      userId: userId,
    );
  }

// ignore: unused_element
  RawObservingStatus fromJson(Map<String, Object> json) {
    return RawObservingStatus.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawObservingStatus = _$RawObservingStatusTearOff();

/// @nodoc
mixin _$RawObservingStatus {
  @nullable
  bool get status;
  @nullable
  int get userId;

  Map<String, dynamic> toJson();
  $RawObservingStatusCopyWith<RawObservingStatus> get copyWith;
}

/// @nodoc
abstract class $RawObservingStatusCopyWith<$Res> {
  factory $RawObservingStatusCopyWith(
          RawObservingStatus value, $Res Function(RawObservingStatus) then) =
      _$RawObservingStatusCopyWithImpl<$Res>;
  $Res call({@nullable bool status, @nullable int userId});
}

/// @nodoc
class _$RawObservingStatusCopyWithImpl<$Res>
    implements $RawObservingStatusCopyWith<$Res> {
  _$RawObservingStatusCopyWithImpl(this._value, this._then);

  final RawObservingStatus _value;
  // ignore: unused_field
  final $Res Function(RawObservingStatus) _then;

  @override
  $Res call({
    Object status = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as bool,
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
abstract class _$RawObservingStatusCopyWith<$Res>
    implements $RawObservingStatusCopyWith<$Res> {
  factory _$RawObservingStatusCopyWith(
          _RawObservingStatus value, $Res Function(_RawObservingStatus) then) =
      __$RawObservingStatusCopyWithImpl<$Res>;
  @override
  $Res call({@nullable bool status, @nullable int userId});
}

/// @nodoc
class __$RawObservingStatusCopyWithImpl<$Res>
    extends _$RawObservingStatusCopyWithImpl<$Res>
    implements _$RawObservingStatusCopyWith<$Res> {
  __$RawObservingStatusCopyWithImpl(
      _RawObservingStatus _value, $Res Function(_RawObservingStatus) _then)
      : super(_value, (v) => _then(v as _RawObservingStatus));

  @override
  _RawObservingStatus get _value => super._value as _RawObservingStatus;

  @override
  $Res call({
    Object status = freezed,
    Object userId = freezed,
  }) {
    return _then(_RawObservingStatus(
      status: status == freezed ? _value.status : status as bool,
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawObservingStatus
    with DiagnosticableTreeMixin
    implements _RawObservingStatus {
  _$_RawObservingStatus({@nullable this.status, @nullable this.userId});

  factory _$_RawObservingStatus.fromJson(Map<String, dynamic> json) =>
      _$_$_RawObservingStatusFromJson(json);

  @override
  @nullable
  final bool status;
  @override
  @nullable
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawObservingStatus(status: $status, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawObservingStatus'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawObservingStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(userId);

  @override
  _$RawObservingStatusCopyWith<_RawObservingStatus> get copyWith =>
      __$RawObservingStatusCopyWithImpl<_RawObservingStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawObservingStatusToJson(this);
  }
}

abstract class _RawObservingStatus implements RawObservingStatus {
  factory _RawObservingStatus({@nullable bool status, @nullable int userId}) =
      _$_RawObservingStatus;

  factory _RawObservingStatus.fromJson(Map<String, dynamic> json) =
      _$_RawObservingStatus.fromJson;

  @override
  @nullable
  bool get status;
  @override
  @nullable
  int get userId;
  @override
  _$RawObservingStatusCopyWith<_RawObservingStatus> get copyWith;
}
