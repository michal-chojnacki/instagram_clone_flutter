// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'send_content_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SendContentEventTearOff {
  const _$SendContentEventTearOff();

// ignore: unused_element
  SendContent sendContent(
      {@required String message, @required String imagePath}) {
    return SendContent(
      message: message,
      imagePath: imagePath,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SendContentEvent = _$SendContentEventTearOff();

/// @nodoc
mixin _$SendContentEvent {
  String get message;
  String get imagePath;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendContent(String message, String imagePath),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendContent(String message, String imagePath),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendContent(SendContent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendContent(SendContent value),
    @required Result orElse(),
  });

  $SendContentEventCopyWith<SendContentEvent> get copyWith;
}

/// @nodoc
abstract class $SendContentEventCopyWith<$Res> {
  factory $SendContentEventCopyWith(
          SendContentEvent value, $Res Function(SendContentEvent) then) =
      _$SendContentEventCopyWithImpl<$Res>;
  $Res call({String message, String imagePath});
}

/// @nodoc
class _$SendContentEventCopyWithImpl<$Res>
    implements $SendContentEventCopyWith<$Res> {
  _$SendContentEventCopyWithImpl(this._value, this._then);

  final SendContentEvent _value;
  // ignore: unused_field
  final $Res Function(SendContentEvent) _then;

  @override
  $Res call({
    Object message = freezed,
    Object imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
    ));
  }
}

/// @nodoc
abstract class $SendContentCopyWith<$Res>
    implements $SendContentEventCopyWith<$Res> {
  factory $SendContentCopyWith(
          SendContent value, $Res Function(SendContent) then) =
      _$SendContentCopyWithImpl<$Res>;
  @override
  $Res call({String message, String imagePath});
}

/// @nodoc
class _$SendContentCopyWithImpl<$Res>
    extends _$SendContentEventCopyWithImpl<$Res>
    implements $SendContentCopyWith<$Res> {
  _$SendContentCopyWithImpl(
      SendContent _value, $Res Function(SendContent) _then)
      : super(_value, (v) => _then(v as SendContent));

  @override
  SendContent get _value => super._value as SendContent;

  @override
  $Res call({
    Object message = freezed,
    Object imagePath = freezed,
  }) {
    return _then(SendContent(
      message: message == freezed ? _value.message : message as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
    ));
  }
}

/// @nodoc
class _$SendContent with DiagnosticableTreeMixin implements SendContent {
  _$SendContent({@required this.message, @required this.imagePath})
      : assert(message != null),
        assert(imagePath != null);

  @override
  final String message;
  @override
  final String imagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SendContentEvent.sendContent(message: $message, imagePath: $imagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SendContentEvent.sendContent'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('imagePath', imagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendContent &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(imagePath);

  @override
  $SendContentCopyWith<SendContent> get copyWith =>
      _$SendContentCopyWithImpl<SendContent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendContent(String message, String imagePath),
  }) {
    assert(sendContent != null);
    return sendContent(message, imagePath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendContent(String message, String imagePath),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendContent != null) {
      return sendContent(message, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendContent(SendContent value),
  }) {
    assert(sendContent != null);
    return sendContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendContent(SendContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendContent != null) {
      return sendContent(this);
    }
    return orElse();
  }
}

abstract class SendContent implements SendContentEvent {
  factory SendContent({@required String message, @required String imagePath}) =
      _$SendContent;

  @override
  String get message;
  @override
  String get imagePath;
  @override
  $SendContentCopyWith<SendContent> get copyWith;
}
