// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'paged_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PagedListTearOff {
  const _$PagedListTearOff();

// ignore: unused_element
  _PagedList<T> call<T>(
      {@required List<T> list, @required int page, @required int pages}) {
    return _PagedList<T>(
      list: list,
      page: page,
      pages: pages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PagedList = _$PagedListTearOff();

/// @nodoc
mixin _$PagedList<T> {
  List<T> get list;
  int get page;
  int get pages;

  $PagedListCopyWith<T, PagedList<T>> get copyWith;
}

/// @nodoc
abstract class $PagedListCopyWith<T, $Res> {
  factory $PagedListCopyWith(
          PagedList<T> value, $Res Function(PagedList<T>) then) =
      _$PagedListCopyWithImpl<T, $Res>;
  $Res call({List<T> list, int page, int pages});
}

/// @nodoc
class _$PagedListCopyWithImpl<T, $Res> implements $PagedListCopyWith<T, $Res> {
  _$PagedListCopyWithImpl(this._value, this._then);

  final PagedList<T> _value;
  // ignore: unused_field
  final $Res Function(PagedList<T>) _then;

  @override
  $Res call({
    Object list = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed ? _value.list : list as List<T>,
      page: page == freezed ? _value.page : page as int,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

/// @nodoc
abstract class _$PagedListCopyWith<T, $Res>
    implements $PagedListCopyWith<T, $Res> {
  factory _$PagedListCopyWith(
          _PagedList<T> value, $Res Function(_PagedList<T>) then) =
      __$PagedListCopyWithImpl<T, $Res>;
  @override
  $Res call({List<T> list, int page, int pages});
}

/// @nodoc
class __$PagedListCopyWithImpl<T, $Res> extends _$PagedListCopyWithImpl<T, $Res>
    implements _$PagedListCopyWith<T, $Res> {
  __$PagedListCopyWithImpl(
      _PagedList<T> _value, $Res Function(_PagedList<T>) _then)
      : super(_value, (v) => _then(v as _PagedList<T>));

  @override
  _PagedList<T> get _value => super._value as _PagedList<T>;

  @override
  $Res call({
    Object list = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_PagedList<T>(
      list: list == freezed ? _value.list : list as List<T>,
      page: page == freezed ? _value.page : page as int,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

/// @nodoc
class _$_PagedList<T> with DiagnosticableTreeMixin implements _PagedList<T> {
  _$_PagedList({@required this.list, @required this.page, @required this.pages})
      : assert(list != null),
        assert(page != null),
        assert(pages != null);

  @override
  final List<T> list;
  @override
  final int page;
  @override
  final int pages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PagedList<$T>(list: $list, page: $page, pages: $pages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PagedList<$T>'))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pages', pages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PagedList<T> &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pages);

  @override
  _$PagedListCopyWith<T, _PagedList<T>> get copyWith =>
      __$PagedListCopyWithImpl<T, _PagedList<T>>(this, _$identity);
}

abstract class _PagedList<T> implements PagedList<T> {
  factory _PagedList(
      {@required List<T> list,
      @required int page,
      @required int pages}) = _$_PagedList<T>;

  @override
  List<T> get list;
  @override
  int get page;
  @override
  int get pages;
  @override
  _$PagedListCopyWith<T, _PagedList<T>> get copyWith;
}
