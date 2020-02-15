// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_content_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class SendContentEvent extends Equatable {
  const SendContentEvent(this._type);

  factory SendContentEvent.sendContent(
      {@required String message, @required String imagePath}) = SendContent;

  final _SendContentEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(SendContent) sendContent}) {
    assert(() {
      if (sendContent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _SendContentEvent.SendContent:
        return sendContent(this as SendContent);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(SendContent) sendContent,
      @required FutureOr<R> Function(SendContentEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _SendContentEvent.SendContent:
        if (sendContent == null) break;
        return sendContent(this as SendContent);
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(SendContent) sendContent}) {
    assert(() {
      if (sendContent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _SendContentEvent.SendContent:
        if (sendContent == null) break;
        return sendContent(this as SendContent);
    }
  }

  @override
  List get props => const [];
}

@immutable
class SendContent extends SendContentEvent {
  const SendContent({@required this.message, @required this.imagePath})
      : super(_SendContentEvent.SendContent);

  final String message;

  final String imagePath;

  @override
  String toString() =>
      'SendContent(message:${this.message},imagePath:${this.imagePath})';
  @override
  List get props => [message, imagePath];
}
