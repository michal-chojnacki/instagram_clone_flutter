// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'main_contents_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MainContentsEventTearOff {
  const _$MainContentsEventTearOff();

// ignore: unused_element
  FetchMainContents fetchMainContents({@required int page}) {
    return FetchMainContents(
      page: page,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MainContentsEvent = _$MainContentsEventTearOff();

/// @nodoc
mixin _$MainContentsEvent {
  int get page;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMainContents(int page),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMainContents(int page),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMainContents(FetchMainContents value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMainContents(FetchMainContents value),
    @required Result orElse(),
  });

  $MainContentsEventCopyWith<MainContentsEvent> get copyWith;
}

/// @nodoc
abstract class $MainContentsEventCopyWith<$Res> {
  factory $MainContentsEventCopyWith(
          MainContentsEvent value, $Res Function(MainContentsEvent) then) =
      _$MainContentsEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$MainContentsEventCopyWithImpl<$Res>
    implements $MainContentsEventCopyWith<$Res> {
  _$MainContentsEventCopyWithImpl(this._value, this._then);

  final MainContentsEvent _value;
  // ignore: unused_field
  final $Res Function(MainContentsEvent) _then;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
abstract class $FetchMainContentsCopyWith<$Res>
    implements $MainContentsEventCopyWith<$Res> {
  factory $FetchMainContentsCopyWith(
          FetchMainContents value, $Res Function(FetchMainContents) then) =
      _$FetchMainContentsCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class _$FetchMainContentsCopyWithImpl<$Res>
    extends _$MainContentsEventCopyWithImpl<$Res>
    implements $FetchMainContentsCopyWith<$Res> {
  _$FetchMainContentsCopyWithImpl(
      FetchMainContents _value, $Res Function(FetchMainContents) _then)
      : super(_value, (v) => _then(v as FetchMainContents));

  @override
  FetchMainContents get _value => super._value as FetchMainContents;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(FetchMainContents(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$FetchMainContents
    with DiagnosticableTreeMixin
    implements FetchMainContents {
  const _$FetchMainContents({@required this.page}) : assert(page != null);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainContentsEvent.fetchMainContents(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainContentsEvent.fetchMainContents'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchMainContents &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $FetchMainContentsCopyWith<FetchMainContents> get copyWith =>
      _$FetchMainContentsCopyWithImpl<FetchMainContents>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMainContents(int page),
  }) {
    assert(fetchMainContents != null);
    return fetchMainContents(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMainContents(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMainContents != null) {
      return fetchMainContents(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMainContents(FetchMainContents value),
  }) {
    assert(fetchMainContents != null);
    return fetchMainContents(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMainContents(FetchMainContents value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMainContents != null) {
      return fetchMainContents(this);
    }
    return orElse();
  }
}

abstract class FetchMainContents implements MainContentsEvent {
  const factory FetchMainContents({@required int page}) = _$FetchMainContents;

  @override
  int get page;
  @override
  $FetchMainContentsCopyWith<FetchMainContents> get copyWith;
}
