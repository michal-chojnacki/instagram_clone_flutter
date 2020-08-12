// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_item_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class ContentItemEvent extends Equatable {
  const ContentItemEvent(this._type);

  factory ContentItemEvent.changeLikeStatus(
      {@required bool liked, @required int contentId}) = ChangeLikeStatus;

  final _ContentItemEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(ChangeLikeStatus) changeLikeStatus}) {
    assert(() {
      if (changeLikeStatus == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _ContentItemEvent.ChangeLikeStatus:
        return changeLikeStatus(this as ChangeLikeStatus);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(ChangeLikeStatus) changeLikeStatus}) {
    assert(() {
      if (changeLikeStatus == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _ContentItemEvent.ChangeLikeStatus:
        return changeLikeStatus(this as ChangeLikeStatus);
    }
  }

  R whenOrElse<R>(
      {R Function(ChangeLikeStatus) changeLikeStatus,
      @required R Function(ContentItemEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _ContentItemEvent.ChangeLikeStatus:
        if (changeLikeStatus == null) break;
        return changeLikeStatus(this as ChangeLikeStatus);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(ChangeLikeStatus) changeLikeStatus,
      @required FutureOr<R> Function(ContentItemEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _ContentItemEvent.ChangeLikeStatus:
        if (changeLikeStatus == null) break;
        return changeLikeStatus(this as ChangeLikeStatus);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(ChangeLikeStatus) changeLikeStatus}) {
    assert(() {
      if (changeLikeStatus == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _ContentItemEvent.ChangeLikeStatus:
        if (changeLikeStatus == null) break;
        return changeLikeStatus(this as ChangeLikeStatus);
    }
  }

  @override
  List get props => const [];
}

@immutable
class ChangeLikeStatus extends ContentItemEvent {
  const ChangeLikeStatus({@required this.liked, @required this.contentId})
      : super(_ContentItemEvent.ChangeLikeStatus);

  final bool liked;

  final int contentId;

  @override
  String toString() =>
      'ChangeLikeStatus(liked:${this.liked},contentId:${this.contentId})';
  @override
  List get props => [liked, contentId];
}
