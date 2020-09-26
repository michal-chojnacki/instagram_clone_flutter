// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'content_item_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContentItemEventTearOff {
  const _$ContentItemEventTearOff();

// ignore: unused_element
  ChangeLikeStatus changeLikeStatus(
      {@required bool liked, @required int contentId}) {
    return ChangeLikeStatus(
      liked: liked,
      contentId: contentId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContentItemEvent = _$ContentItemEventTearOff();

/// @nodoc
mixin _$ContentItemEvent {
  bool get liked;
  int get contentId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeLikeStatus(bool liked, int contentId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeLikeStatus(bool liked, int contentId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeLikeStatus(ChangeLikeStatus value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeLikeStatus(ChangeLikeStatus value),
    @required Result orElse(),
  });

  $ContentItemEventCopyWith<ContentItemEvent> get copyWith;
}

/// @nodoc
abstract class $ContentItemEventCopyWith<$Res> {
  factory $ContentItemEventCopyWith(
          ContentItemEvent value, $Res Function(ContentItemEvent) then) =
      _$ContentItemEventCopyWithImpl<$Res>;
  $Res call({bool liked, int contentId});
}

/// @nodoc
class _$ContentItemEventCopyWithImpl<$Res>
    implements $ContentItemEventCopyWith<$Res> {
  _$ContentItemEventCopyWithImpl(this._value, this._then);

  final ContentItemEvent _value;
  // ignore: unused_field
  final $Res Function(ContentItemEvent) _then;

  @override
  $Res call({
    Object liked = freezed,
    Object contentId = freezed,
  }) {
    return _then(_value.copyWith(
      liked: liked == freezed ? _value.liked : liked as bool,
      contentId: contentId == freezed ? _value.contentId : contentId as int,
    ));
  }
}

/// @nodoc
abstract class $ChangeLikeStatusCopyWith<$Res>
    implements $ContentItemEventCopyWith<$Res> {
  factory $ChangeLikeStatusCopyWith(
          ChangeLikeStatus value, $Res Function(ChangeLikeStatus) then) =
      _$ChangeLikeStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool liked, int contentId});
}

/// @nodoc
class _$ChangeLikeStatusCopyWithImpl<$Res>
    extends _$ContentItemEventCopyWithImpl<$Res>
    implements $ChangeLikeStatusCopyWith<$Res> {
  _$ChangeLikeStatusCopyWithImpl(
      ChangeLikeStatus _value, $Res Function(ChangeLikeStatus) _then)
      : super(_value, (v) => _then(v as ChangeLikeStatus));

  @override
  ChangeLikeStatus get _value => super._value as ChangeLikeStatus;

  @override
  $Res call({
    Object liked = freezed,
    Object contentId = freezed,
  }) {
    return _then(ChangeLikeStatus(
      liked: liked == freezed ? _value.liked : liked as bool,
      contentId: contentId == freezed ? _value.contentId : contentId as int,
    ));
  }
}

/// @nodoc
class _$ChangeLikeStatus
    with DiagnosticableTreeMixin
    implements ChangeLikeStatus {
  const _$ChangeLikeStatus({@required this.liked, @required this.contentId})
      : assert(liked != null),
        assert(contentId != null);

  @override
  final bool liked;
  @override
  final int contentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentItemEvent.changeLikeStatus(liked: $liked, contentId: $contentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentItemEvent.changeLikeStatus'))
      ..add(DiagnosticsProperty('liked', liked))
      ..add(DiagnosticsProperty('contentId', contentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeLikeStatus &&
            (identical(other.liked, liked) ||
                const DeepCollectionEquality().equals(other.liked, liked)) &&
            (identical(other.contentId, contentId) ||
                const DeepCollectionEquality()
                    .equals(other.contentId, contentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(liked) ^
      const DeepCollectionEquality().hash(contentId);

  @override
  $ChangeLikeStatusCopyWith<ChangeLikeStatus> get copyWith =>
      _$ChangeLikeStatusCopyWithImpl<ChangeLikeStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeLikeStatus(bool liked, int contentId),
  }) {
    assert(changeLikeStatus != null);
    return changeLikeStatus(liked, contentId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeLikeStatus(bool liked, int contentId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeLikeStatus != null) {
      return changeLikeStatus(liked, contentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeLikeStatus(ChangeLikeStatus value),
  }) {
    assert(changeLikeStatus != null);
    return changeLikeStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeLikeStatus(ChangeLikeStatus value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeLikeStatus != null) {
      return changeLikeStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeLikeStatus implements ContentItemEvent {
  const factory ChangeLikeStatus(
      {@required bool liked, @required int contentId}) = _$ChangeLikeStatus;

  @override
  bool get liked;
  @override
  int get contentId;
  @override
  $ChangeLikeStatusCopyWith<ChangeLikeStatus> get copyWith;
}
