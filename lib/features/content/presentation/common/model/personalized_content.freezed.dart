// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'personalized_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PersonalizedContentTearOff {
  const _$PersonalizedContentTearOff();

// ignore: unused_element
  _PersonalizedContent call({@required Content content, @required bool liked}) {
    return _PersonalizedContent(
      content: content,
      liked: liked,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PersonalizedContent = _$PersonalizedContentTearOff();

/// @nodoc
mixin _$PersonalizedContent {
  Content get content;
  bool get liked;

  $PersonalizedContentCopyWith<PersonalizedContent> get copyWith;
}

/// @nodoc
abstract class $PersonalizedContentCopyWith<$Res> {
  factory $PersonalizedContentCopyWith(
          PersonalizedContent value, $Res Function(PersonalizedContent) then) =
      _$PersonalizedContentCopyWithImpl<$Res>;
  $Res call({Content content, bool liked});

  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class _$PersonalizedContentCopyWithImpl<$Res>
    implements $PersonalizedContentCopyWith<$Res> {
  _$PersonalizedContentCopyWithImpl(this._value, this._then);

  final PersonalizedContent _value;
  // ignore: unused_field
  final $Res Function(PersonalizedContent) _then;

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

  @override
  $ContentCopyWith<$Res> get content {
    if (_value.content == null) {
      return null;
    }
    return $ContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
abstract class _$PersonalizedContentCopyWith<$Res>
    implements $PersonalizedContentCopyWith<$Res> {
  factory _$PersonalizedContentCopyWith(_PersonalizedContent value,
          $Res Function(_PersonalizedContent) then) =
      __$PersonalizedContentCopyWithImpl<$Res>;
  @override
  $Res call({Content content, bool liked});

  @override
  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class __$PersonalizedContentCopyWithImpl<$Res>
    extends _$PersonalizedContentCopyWithImpl<$Res>
    implements _$PersonalizedContentCopyWith<$Res> {
  __$PersonalizedContentCopyWithImpl(
      _PersonalizedContent _value, $Res Function(_PersonalizedContent) _then)
      : super(_value, (v) => _then(v as _PersonalizedContent));

  @override
  _PersonalizedContent get _value => super._value as _PersonalizedContent;

  @override
  $Res call({
    Object content = freezed,
    Object liked = freezed,
  }) {
    return _then(_PersonalizedContent(
      content: content == freezed ? _value.content : content as Content,
      liked: liked == freezed ? _value.liked : liked as bool,
    ));
  }
}

/// @nodoc
class _$_PersonalizedContent
    with DiagnosticableTreeMixin
    implements _PersonalizedContent {
  _$_PersonalizedContent({@required this.content, @required this.liked})
      : assert(content != null),
        assert(liked != null);

  @override
  final Content content;
  @override
  final bool liked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonalizedContent(content: $content, liked: $liked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonalizedContent'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('liked', liked));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalizedContent &&
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
  _$PersonalizedContentCopyWith<_PersonalizedContent> get copyWith =>
      __$PersonalizedContentCopyWithImpl<_PersonalizedContent>(
          this, _$identity);
}

abstract class _PersonalizedContent implements PersonalizedContent {
  factory _PersonalizedContent(
      {@required Content content,
      @required bool liked}) = _$_PersonalizedContent;

  @override
  Content get content;
  @override
  bool get liked;
  @override
  _$PersonalizedContentCopyWith<_PersonalizedContent> get copyWith;
}
