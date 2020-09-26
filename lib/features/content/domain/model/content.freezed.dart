// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

// ignore: unused_element
  _Content call(
      {@required int id,
      @required Image image,
      @required String description,
      @required User owner,
      @required int likesCount,
      @required int publicationTimestamp}) {
    return _Content(
      id: id,
      image: image,
      description: description,
      owner: owner,
      likesCount: likesCount,
      publicationTimestamp: publicationTimestamp,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  int get id;
  Image get image;
  String get description;
  User get owner;
  int get likesCount;
  int get publicationTimestamp;

  $ContentCopyWith<Content> get copyWith;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Image image,
      String description,
      User owner,
      int likesCount,
      int publicationTimestamp});

  $ImageCopyWith<$Res> get image;
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

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
      image: image == freezed ? _value.image : image as Image,
      description:
          description == freezed ? _value.description : description as String,
      owner: owner == freezed ? _value.owner : owner as User,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      publicationTimestamp: publicationTimestamp == freezed
          ? _value.publicationTimestamp
          : publicationTimestamp as int,
    ));
  }

  @override
  $ImageCopyWith<$Res> get image {
    if (_value.image == null) {
      return null;
    }
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $UserCopyWith<$Res> get owner {
    if (_value.owner == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Image image,
      String description,
      User owner,
      int likesCount,
      int publicationTimestamp});

  @override
  $ImageCopyWith<$Res> get image;
  @override
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object id = freezed,
    Object image = freezed,
    Object description = freezed,
    Object owner = freezed,
    Object likesCount = freezed,
    Object publicationTimestamp = freezed,
  }) {
    return _then(_Content(
      id: id == freezed ? _value.id : id as int,
      image: image == freezed ? _value.image : image as Image,
      description:
          description == freezed ? _value.description : description as String,
      owner: owner == freezed ? _value.owner : owner as User,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      publicationTimestamp: publicationTimestamp == freezed
          ? _value.publicationTimestamp
          : publicationTimestamp as int,
    ));
  }
}

/// @nodoc
class _$_Content with DiagnosticableTreeMixin implements _Content {
  _$_Content(
      {@required this.id,
      @required this.image,
      @required this.description,
      @required this.owner,
      @required this.likesCount,
      @required this.publicationTimestamp})
      : assert(id != null),
        assert(image != null),
        assert(description != null),
        assert(owner != null),
        assert(likesCount != null),
        assert(publicationTimestamp != null);

  @override
  final int id;
  @override
  final Image image;
  @override
  final String description;
  @override
  final User owner;
  @override
  final int likesCount;
  @override
  final int publicationTimestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Content(id: $id, image: $image, description: $description, owner: $owner, likesCount: $likesCount, publicationTimestamp: $publicationTimestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Content'))
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
        (other is _Content &&
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
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);
}

abstract class _Content implements Content {
  factory _Content(
      {@required int id,
      @required Image image,
      @required String description,
      @required User owner,
      @required int likesCount,
      @required int publicationTimestamp}) = _$_Content;

  @override
  int get id;
  @override
  Image get image;
  @override
  String get description;
  @override
  User get owner;
  @override
  int get likesCount;
  @override
  int get publicationTimestamp;
  @override
  _$ContentCopyWith<_Content> get copyWith;
}
