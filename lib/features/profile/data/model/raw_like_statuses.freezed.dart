// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_like_statuses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawLikeStatuses _$RawLikeStatusesFromJson(Map<String, dynamic> json) {
  return _RawLikeStatuses.fromJson(json);
}

/// @nodoc
class _$RawLikeStatusesTearOff {
  const _$RawLikeStatusesTearOff();

// ignore: unused_element
  _RawLikeStatuses call({@nullable Map<int, bool> statuses}) {
    return _RawLikeStatuses(
      statuses: statuses,
    );
  }

// ignore: unused_element
  RawLikeStatuses fromJson(Map<String, Object> json) {
    return RawLikeStatuses.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawLikeStatuses = _$RawLikeStatusesTearOff();

/// @nodoc
mixin _$RawLikeStatuses {
  @nullable
  Map<int, bool> get statuses;

  Map<String, dynamic> toJson();
  $RawLikeStatusesCopyWith<RawLikeStatuses> get copyWith;
}

/// @nodoc
abstract class $RawLikeStatusesCopyWith<$Res> {
  factory $RawLikeStatusesCopyWith(
          RawLikeStatuses value, $Res Function(RawLikeStatuses) then) =
      _$RawLikeStatusesCopyWithImpl<$Res>;
  $Res call({@nullable Map<int, bool> statuses});
}

/// @nodoc
class _$RawLikeStatusesCopyWithImpl<$Res>
    implements $RawLikeStatusesCopyWith<$Res> {
  _$RawLikeStatusesCopyWithImpl(this._value, this._then);

  final RawLikeStatuses _value;
  // ignore: unused_field
  final $Res Function(RawLikeStatuses) _then;

  @override
  $Res call({
    Object statuses = freezed,
  }) {
    return _then(_value.copyWith(
      statuses:
          statuses == freezed ? _value.statuses : statuses as Map<int, bool>,
    ));
  }
}

/// @nodoc
abstract class _$RawLikeStatusesCopyWith<$Res>
    implements $RawLikeStatusesCopyWith<$Res> {
  factory _$RawLikeStatusesCopyWith(
          _RawLikeStatuses value, $Res Function(_RawLikeStatuses) then) =
      __$RawLikeStatusesCopyWithImpl<$Res>;
  @override
  $Res call({@nullable Map<int, bool> statuses});
}

/// @nodoc
class __$RawLikeStatusesCopyWithImpl<$Res>
    extends _$RawLikeStatusesCopyWithImpl<$Res>
    implements _$RawLikeStatusesCopyWith<$Res> {
  __$RawLikeStatusesCopyWithImpl(
      _RawLikeStatuses _value, $Res Function(_RawLikeStatuses) _then)
      : super(_value, (v) => _then(v as _RawLikeStatuses));

  @override
  _RawLikeStatuses get _value => super._value as _RawLikeStatuses;

  @override
  $Res call({
    Object statuses = freezed,
  }) {
    return _then(_RawLikeStatuses(
      statuses:
          statuses == freezed ? _value.statuses : statuses as Map<int, bool>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawLikeStatuses
    with DiagnosticableTreeMixin
    implements _RawLikeStatuses {
  _$_RawLikeStatuses({@nullable this.statuses});

  factory _$_RawLikeStatuses.fromJson(Map<String, dynamic> json) =>
      _$_$_RawLikeStatusesFromJson(json);

  @override
  @nullable
  final Map<int, bool> statuses;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawLikeStatuses(statuses: $statuses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawLikeStatuses'))
      ..add(DiagnosticsProperty('statuses', statuses));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawLikeStatuses &&
            (identical(other.statuses, statuses) ||
                const DeepCollectionEquality()
                    .equals(other.statuses, statuses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(statuses);

  @override
  _$RawLikeStatusesCopyWith<_RawLikeStatuses> get copyWith =>
      __$RawLikeStatusesCopyWithImpl<_RawLikeStatuses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawLikeStatusesToJson(this);
  }
}

abstract class _RawLikeStatuses implements RawLikeStatuses {
  factory _RawLikeStatuses({@nullable Map<int, bool> statuses}) =
      _$_RawLikeStatuses;

  factory _RawLikeStatuses.fromJson(Map<String, dynamic> json) =
      _$_RawLikeStatuses.fromJson;

  @override
  @nullable
  Map<int, bool> get statuses;
  @override
  _$RawLikeStatusesCopyWith<_RawLikeStatuses> get copyWith;
}
