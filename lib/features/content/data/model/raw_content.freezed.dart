// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawContent _$RawContentFromJson(Map<String, dynamic> json) {
  return _RawContent.fromJson(json);
}

/// @nodoc
class _$RawContentTearOff {
  const _$RawContentTearOff();

// ignore: unused_element
  _RawContent call(
      {@nullable int id,
      @nullable RawImage image,
      @nullable String description,
      @nullable RawUser owner,
      @nullable int likesCount,
      @nullable int publicationTimestamp}) {
    return _RawContent(
      id: id,
      image: image,
      description: description,
      owner: owner,
      likesCount: likesCount,
      publicationTimestamp: publicationTimestamp,
    );
  }

// ignore: unused_element
  RawContent fromJson(Map<String, Object> json) {
    return RawContent.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawContent = _$RawContentTearOff();

/// @nodoc
mixin _$RawContent {
  @nullable
  int get id;
  @nullable
  RawImage get image;
  @nullable
  String get description;
  @nullable
  RawUser get owner;
  @nullable
  int get likesCount;
  @nullable
  int get publicationTimestamp;

  Map<String, dynamic> toJson();
  $RawContentCopyWith<RawContent> get copyWith;
}

/// @nodoc
abstract class $RawContentCopyWith<$Res> {
  factory $RawContentCopyWith(
          RawContent value, $Res Function(RawContent) then) =
      _$RawContentCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @nullable RawImage image,
      @nullable String description,
      @nullable RawUser owner,
      @nullable int likesCount,
      @nullable int publicationTimestamp});

  $RawImageCopyWith<$Res> get image;
  $RawUserCopyWith<$Res> get owner;
}

/// @nodoc
class _$RawContentCopyWithImpl<$Res> implements $RawContentCopyWith<$Res> {
  _$RawContentCopyWithImpl(this._value, this._then);

  final RawContent _value;
  // ignore: unused_field
  final $Res Function(RawContent) _then;

  @override
  $Res call({
    Object id = freezed,
    Object image = freezed,
    Object description = freezed,
    Object owner = freezed,
    Object likesCount = freezed,
    Object publicationTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      image: image == freezed ? _value.image : image as RawImage,
      description:
          description == freezed ? _value.description : description as String,
      owner: owner == freezed ? _value.owner : owner as RawUser,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      publicationTimestamp: publicationTimestamp == freezed
          ? _value.publicationTimestamp
          : publicationTimestamp as int,
    ));
  }

  @override
  $RawImageCopyWith<$Res> get image {
    if (_value.image == null) {
      return null;
    }
    return $RawImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $RawUserCopyWith<$Res> get owner {
    if (_value.owner == null) {
      return null;
    }
    return $RawUserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$RawContentCopyWith<$Res> implements $RawContentCopyWith<$Res> {
  factory _$RawContentCopyWith(
          _RawContent value, $Res Function(_RawContent) then) =
      __$RawContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @nullable RawImage image,
      @nullable String description,
      @nullable RawUser owner,
      @nullable int likesCount,
      @nullable int publicationTimestamp});

  @override
  $RawImageCopyWith<$Res> get image;
  @override
  $RawUserCopyWith<$Res> get owner;
}

/// @nodoc
class __$RawContentCopyWithImpl<$Res> extends _$RawContentCopyWithImpl<$Res>
    implements _$RawContentCopyWith<$Res> {
  __$RawContentCopyWithImpl(
      _RawContent _value, $Res Function(_RawContent) _then)
      : super(_value, (v) => _then(v as _RawContent));

  @override
  _RawContent get _value => super._value as _RawContent;

  @override
  $Res call({
    Object id = freezed,
    Object image = freezed,
    Object description = freezed,
    Object owner = freezed,
    Object likesCount = freezed,
    Object publicationTimestamp = freezed,
  }) {
    return _then(_RawContent(
      id: id == freezed ? _value.id : id as int,
      image: image == freezed ? _value.image : image as RawImage,
      description:
          description == freezed ? _value.description : description as String,
      owner: owner == freezed ? _value.owner : owner as RawUser,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      publicationTimestamp: publicationTimestamp == freezed
          ? _value.publicationTimestamp
          : publicationTimestamp as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawContent with DiagnosticableTreeMixin implements _RawContent {
  _$_RawContent(
      {@nullable this.id,
      @nullable this.image,
      @nullable this.description,
      @nullable this.owner,
      @nullable this.likesCount,
      @nullable this.publicationTimestamp});

  factory _$_RawContent.fromJson(Map<String, dynamic> json) =>
      _$_$_RawContentFromJson(json);

  @override
  @nullable
  final int id;
  @override
  @nullable
  final RawImage image;
  @override
  @nullable
  final String description;
  @override
  @nullable
  final RawUser owner;
  @override
  @nullable
  final int likesCount;
  @override
  @nullable
  final int publicationTimestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawContent(id: $id, image: $image, description: $description, owner: $owner, likesCount: $likesCount, publicationTimestamp: $publicationTimestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawContent'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('publicationTimestamp', publicationTimestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawContent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.publicationTimestamp, publicationTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.publicationTimestamp, publicationTimestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(publicationTimestamp);

  @override
  _$RawContentCopyWith<_RawContent> get copyWith =>
      __$RawContentCopyWithImpl<_RawContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawContentToJson(this);
  }
}

abstract class _RawContent implements RawContent {
  factory _RawContent(
      {@nullable int id,
      @nullable RawImage image,
      @nullable String description,
      @nullable RawUser owner,
      @nullable int likesCount,
      @nullable int publicationTimestamp}) = _$_RawContent;

  factory _RawContent.fromJson(Map<String, dynamic> json) =
      _$_RawContent.fromJson;

  @override
  @nullable
  int get id;
  @override
  @nullable
  RawImage get image;
  @override
  @nullable
  String get description;
  @override
  @nullable
  RawUser get owner;
  @override
  @nullable
  int get likesCount;
  @override
  @nullable
  int get publicationTimestamp;
  @override
  _$RawContentCopyWith<_RawContent> get copyWith;
}
