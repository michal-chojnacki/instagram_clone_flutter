// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawImage _$RawImageFromJson(Map<String, dynamic> json) {
  return _RawImage.fromJson(json);
}

/// @nodoc
class _$RawImageTearOff {
  const _$RawImageTearOff();

// ignore: unused_element
  _RawImage call({@nullable String url}) {
    return _RawImage(
      url: url,
    );
  }

// ignore: unused_element
  RawImage fromJson(Map<String, Object> json) {
    return RawImage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawImage = _$RawImageTearOff();

/// @nodoc
mixin _$RawImage {
  @nullable
  String get url;

  Map<String, dynamic> toJson();
  $RawImageCopyWith<RawImage> get copyWith;
}

/// @nodoc
abstract class $RawImageCopyWith<$Res> {
  factory $RawImageCopyWith(RawImage value, $Res Function(RawImage) then) =
      _$RawImageCopyWithImpl<$Res>;
  $Res call({@nullable String url});
}

/// @nodoc
class _$RawImageCopyWithImpl<$Res> implements $RawImageCopyWith<$Res> {
  _$RawImageCopyWithImpl(this._value, this._then);

  final RawImage _value;
  // ignore: unused_field
  final $Res Function(RawImage) _then;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$RawImageCopyWith<$Res> implements $RawImageCopyWith<$Res> {
  factory _$RawImageCopyWith(_RawImage value, $Res Function(_RawImage) then) =
      __$RawImageCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String url});
}

/// @nodoc
class __$RawImageCopyWithImpl<$Res> extends _$RawImageCopyWithImpl<$Res>
    implements _$RawImageCopyWith<$Res> {
  __$RawImageCopyWithImpl(_RawImage _value, $Res Function(_RawImage) _then)
      : super(_value, (v) => _then(v as _RawImage));

  @override
  _RawImage get _value => super._value as _RawImage;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_RawImage(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawImage with DiagnosticableTreeMixin implements _RawImage {
  _$_RawImage({@nullable this.url});

  factory _$_RawImage.fromJson(Map<String, dynamic> json) =>
      _$_$_RawImageFromJson(json);

  @override
  @nullable
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawImage(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawImage'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$RawImageCopyWith<_RawImage> get copyWith =>
      __$RawImageCopyWithImpl<_RawImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawImageToJson(this);
  }
}

abstract class _RawImage implements RawImage {
  factory _RawImage({@nullable String url}) = _$_RawImage;

  factory _RawImage.fromJson(Map<String, dynamic> json) = _$_RawImage.fromJson;

  @override
  @nullable
  String get url;
  @override
  _$RawImageCopyWith<_RawImage> get copyWith;
}
