// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'content_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContentItemStateTearOff {
  const _$ContentItemStateTearOff();

// ignore: unused_element
  _ContentItemState call({@required Content content, @required bool liked}) {
    return _ContentItemState(
      content: content,
      liked: liked,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContentItemState = _$ContentItemStateTearOff();

/// @nodoc
mixin _$ContentItemState {
  Content get content;
  bool get liked;

  $ContentItemStateCopyWith<ContentItemState> get copyWith;
}

/// @nodoc
abstract class $ContentItemStateCopyWith<$Res> {
  factory $ContentItemStateCopyWith(
          ContentItemState value, $Res Function(ContentItemState) then) =
      _$ContentItemStateCopyWithImpl<$Res>;
  $Res call({Content content, bool liked});
}

/// @nodoc
class _$ContentItemStateCopyWithImpl<$Res>
    implements $ContentItemStateCopyWith<$Res> {
  _$ContentItemStateCopyWithImpl(this._value, this._then);

  final ContentItemState _value;
  // ignore: unused_field
  final $Res Function(ContentItemState) _then;

  @override
  $Res call({
    Object content = freezed,
    Object liked = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed ? _value.content : content as Content,
      liked: liked == freezed ? _value.liked : liked as bool,
    ));
  }
}

/// @nodoc
abstract class _$ContentItemStateCopyWith<$Res>
    implements $ContentItemStateCopyWith<$Res> {
  factory _$ContentItemStateCopyWith(
          _ContentItemState value, $Res Function(_ContentItemState) then) =
      __$ContentItemStateCopyWithImpl<$Res>;
  @override
  $Res call({Content content, bool liked});
}

/// @nodoc
class __$ContentItemStateCopyWithImpl<$Res>
    extends _$ContentItemStateCopyWithImpl<$Res>
    implements _$ContentItemStateCopyWith<$Res> {
  __$ContentItemStateCopyWithImpl(
      _ContentItemState _value, $Res Function(_ContentItemState) _then)
      : super(_value, (v) => _then(v as _ContentItemState));

  @override
  _ContentItemState get _value => super._value as _ContentItemState;

  @override
  $Res call({
    Object content = freezed,
    Object liked = freezed,
  }) {
    return _then(_ContentItemState(
      content: content == freezed ? _value.content : content as Content,
      liked: liked == freezed ? _value.liked : liked as bool,
    ));
  }
}

/// @nodoc
class _$_ContentItemState
    with DiagnosticableTreeMixin
    implements _ContentItemState {
  _$_ContentItemState({@required this.content, @required this.liked})
      : assert(content != null),
        assert(liked != null);

  @override
  final Content content;
  @override
  final bool liked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentItemState(content: $content, liked: $liked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentItemState'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('liked', liked));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentItemState &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.liked, liked) ||
                const DeepCollectionEquality().equals(other.liked, liked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(liked);

  @override
  _$ContentItemStateCopyWith<_ContentItemState> get copyWith =>
      __$ContentItemStateCopyWithImpl<_ContentItemState>(this, _$identity);
}

abstract class _ContentItemState implements ContentItemState {
  factory _ContentItemState({@required Content content, @required bool liked}) =
      _$_ContentItemState;

  @override
  Content get content;
  @override
  bool get liked;
  @override
  _$ContentItemStateCopyWith<_ContentItemState> get copyWith;
}
