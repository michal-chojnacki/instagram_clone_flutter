// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawContents _$RawContentsFromJson(Map<String, dynamic> json) {
  return _RawContents.fromJson(json);
}

/// @nodoc
class _$RawContentsTearOff {
  const _$RawContentsTearOff();

// ignore: unused_element
  _RawContents call(
      {@nullable List<RawContent> contents,
      @nullable int page,
      @nullable int pages}) {
    return _RawContents(
      contents: contents,
      page: page,
      pages: pages,
    );
  }

// ignore: unused_element
  RawContents fromJson(Map<String, Object> json) {
    return RawContents.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawContents = _$RawContentsTearOff();

/// @nodoc
mixin _$RawContents {
  @nullable
  List<RawContent> get contents;
  @nullable
  int get page;
  @nullable
  int get pages;

  Map<String, dynamic> toJson();
  $RawContentsCopyWith<RawContents> get copyWith;
}

/// @nodoc
abstract class $RawContentsCopyWith<$Res> {
  factory $RawContentsCopyWith(
          RawContents value, $Res Function(RawContents) then) =
      _$RawContentsCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<RawContent> contents,
      @nullable int page,
      @nullable int pages});
}

/// @nodoc
class _$RawContentsCopyWithImpl<$Res> implements $RawContentsCopyWith<$Res> {
  _$RawContentsCopyWithImpl(this._value, this._then);

  final RawContents _value;
  // ignore: unused_field
  final $Res Function(RawContents) _then;

  @override
  $Res call({
    Object contents = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_value.copyWith(
      contents:
          contents == freezed ? _value.contents : contents as List<RawContent>,
      page: page == freezed ? _value.page : page as int,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

/// @nodoc
abstract class _$RawContentsCopyWith<$Res>
    implements $RawContentsCopyWith<$Res> {
  factory _$RawContentsCopyWith(
          _RawContents value, $Res Function(_RawContents) then) =
      __$RawContentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<RawContent> contents,
      @nullable int page,
      @nullable int pages});
}

/// @nodoc
class __$RawContentsCopyWithImpl<$Res> extends _$RawContentsCopyWithImpl<$Res>
    implements _$RawContentsCopyWith<$Res> {
  __$RawContentsCopyWithImpl(
      _RawContents _value, $Res Function(_RawContents) _then)
      : super(_value, (v) => _then(v as _RawContents));

  @override
  _RawContents get _value => super._value as _RawContents;

  @override
  $Res call({
    Object contents = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_RawContents(
      contents:
          contents == freezed ? _value.contents : contents as List<RawContent>,
      page: page == freezed ? _value.page : page as int,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawContents with DiagnosticableTreeMixin implements _RawContents {
  _$_RawContents(
      {@nullable this.contents, @nullable this.page, @nullable this.pages});

  factory _$_RawContents.fromJson(Map<String, dynamic> json) =>
      _$_$_RawContentsFromJson(json);

  @override
  @nullable
  final List<RawContent> contents;
  @override
  @nullable
  final int page;
  @override
  @nullable
  final int pages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawContents(contents: $contents, page: $page, pages: $pages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawContents'))
      ..add(DiagnosticsProperty('contents', contents))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pages', pages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawContents &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pages);

  @override
  _$RawContentsCopyWith<_RawContents> get copyWith =>
      __$RawContentsCopyWithImpl<_RawContents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawContentsToJson(this);
  }
}

abstract class _RawContents implements RawContents {
  factory _RawContents(
      {@nullable List<RawContent> contents,
      @nullable int page,
      @nullable int pages}) = _$_RawContents;

  factory _RawContents.fromJson(Map<String, dynamic> json) =
      _$_RawContents.fromJson;

  @override
  @nullable
  List<RawContent> get contents;
  @override
  @nullable
  int get page;
  @override
  @nullable
  int get pages;
  @override
  _$RawContentsCopyWith<_RawContents> get copyWith;
}
