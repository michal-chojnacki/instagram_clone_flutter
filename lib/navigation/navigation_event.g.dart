// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class NavigationEvent extends Equatable {
  const NavigationEvent(this._type);

  factory NavigationEvent.popPage() = PopPage;

  factory NavigationEvent.openMainUserPage() = OpenMainUserPage;

  factory NavigationEvent.openLoginPage() = OpenLoginPage;

  factory NavigationEvent.openEditUserPage() = OpenEditUserPage;

  factory NavigationEvent.openSendContentPage({@required String imagePath}) =
      OpenSendContentPage;

  factory NavigationEvent.openPickImagePage(
      {@required Function onPickedImage,
      @required double ratio}) = OpenPickImagePage;

  factory NavigationEvent.openUserProfilePage({@required User user}) =
      OpenUserProfilePage;

  factory NavigationEvent.openSingleContentPage({@required Content content}) =
      OpenSingleContentPage;

  factory NavigationEvent.openAdjustImagePage(
      {@required bool editable,
      @required String path,
      @required Function onPickedImage,
      @required double ratio}) = OpenAdjustImagePage;

  final _NavigationEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(PopPage) popPage,
      @required R Function(OpenMainUserPage) openMainUserPage,
      @required R Function(OpenLoginPage) openLoginPage,
      @required R Function(OpenEditUserPage) openEditUserPage,
      @required R Function(OpenSendContentPage) openSendContentPage,
      @required R Function(OpenPickImagePage) openPickImagePage,
      @required R Function(OpenUserProfilePage) openUserProfilePage,
      @required R Function(OpenSingleContentPage) openSingleContentPage,
      @required R Function(OpenAdjustImagePage) openAdjustImagePage}) {
    assert(() {
      if (popPage == null ||
          openMainUserPage == null ||
          openLoginPage == null ||
          openEditUserPage == null ||
          openSendContentPage == null ||
          openPickImagePage == null ||
          openUserProfilePage == null ||
          openSingleContentPage == null ||
          openAdjustImagePage == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.PopPage:
        return popPage(this as PopPage);
      case _NavigationEvent.OpenMainUserPage:
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        return openLoginPage(this as OpenLoginPage);
      case _NavigationEvent.OpenEditUserPage:
        return openEditUserPage(this as OpenEditUserPage);
      case _NavigationEvent.OpenSendContentPage:
        return openSendContentPage(this as OpenSendContentPage);
      case _NavigationEvent.OpenPickImagePage:
        return openPickImagePage(this as OpenPickImagePage);
      case _NavigationEvent.OpenUserProfilePage:
        return openUserProfilePage(this as OpenUserProfilePage);
      case _NavigationEvent.OpenSingleContentPage:
        return openSingleContentPage(this as OpenSingleContentPage);
      case _NavigationEvent.OpenAdjustImagePage:
        return openAdjustImagePage(this as OpenAdjustImagePage);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(PopPage) popPage,
      @required
          FutureOr<R> Function(OpenMainUserPage) openMainUserPage,
      @required
          FutureOr<R> Function(OpenLoginPage) openLoginPage,
      @required
          FutureOr<R> Function(OpenEditUserPage) openEditUserPage,
      @required
          FutureOr<R> Function(OpenSendContentPage) openSendContentPage,
      @required
          FutureOr<R> Function(OpenPickImagePage) openPickImagePage,
      @required
          FutureOr<R> Function(OpenUserProfilePage) openUserProfilePage,
      @required
          FutureOr<R> Function(OpenSingleContentPage) openSingleContentPage,
      @required
          FutureOr<R> Function(OpenAdjustImagePage) openAdjustImagePage}) {
    assert(() {
      if (popPage == null ||
          openMainUserPage == null ||
          openLoginPage == null ||
          openEditUserPage == null ||
          openSendContentPage == null ||
          openPickImagePage == null ||
          openUserProfilePage == null ||
          openSingleContentPage == null ||
          openAdjustImagePage == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.PopPage:
        return popPage(this as PopPage);
      case _NavigationEvent.OpenMainUserPage:
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        return openLoginPage(this as OpenLoginPage);
      case _NavigationEvent.OpenEditUserPage:
        return openEditUserPage(this as OpenEditUserPage);
      case _NavigationEvent.OpenSendContentPage:
        return openSendContentPage(this as OpenSendContentPage);
      case _NavigationEvent.OpenPickImagePage:
        return openPickImagePage(this as OpenPickImagePage);
      case _NavigationEvent.OpenUserProfilePage:
        return openUserProfilePage(this as OpenUserProfilePage);
      case _NavigationEvent.OpenSingleContentPage:
        return openSingleContentPage(this as OpenSingleContentPage);
      case _NavigationEvent.OpenAdjustImagePage:
        return openAdjustImagePage(this as OpenAdjustImagePage);
    }
  }

  R whenOrElse<R>(
      {R Function(PopPage) popPage,
      R Function(OpenMainUserPage) openMainUserPage,
      R Function(OpenLoginPage) openLoginPage,
      R Function(OpenEditUserPage) openEditUserPage,
      R Function(OpenSendContentPage) openSendContentPage,
      R Function(OpenPickImagePage) openPickImagePage,
      R Function(OpenUserProfilePage) openUserProfilePage,
      R Function(OpenSingleContentPage) openSingleContentPage,
      R Function(OpenAdjustImagePage) openAdjustImagePage,
      @required R Function(NavigationEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.PopPage:
        if (popPage == null) break;
        return popPage(this as PopPage);
      case _NavigationEvent.OpenMainUserPage:
        if (openMainUserPage == null) break;
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        if (openLoginPage == null) break;
        return openLoginPage(this as OpenLoginPage);
      case _NavigationEvent.OpenEditUserPage:
        if (openEditUserPage == null) break;
        return openEditUserPage(this as OpenEditUserPage);
      case _NavigationEvent.OpenSendContentPage:
        if (openSendContentPage == null) break;
        return openSendContentPage(this as OpenSendContentPage);
      case _NavigationEvent.OpenPickImagePage:
        if (openPickImagePage == null) break;
        return openPickImagePage(this as OpenPickImagePage);
      case _NavigationEvent.OpenUserProfilePage:
        if (openUserProfilePage == null) break;
        return openUserProfilePage(this as OpenUserProfilePage);
      case _NavigationEvent.OpenSingleContentPage:
        if (openSingleContentPage == null) break;
        return openSingleContentPage(this as OpenSingleContentPage);
      case _NavigationEvent.OpenAdjustImagePage:
        if (openAdjustImagePage == null) break;
        return openAdjustImagePage(this as OpenAdjustImagePage);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(PopPage) popPage,
      FutureOr<R> Function(OpenMainUserPage) openMainUserPage,
      FutureOr<R> Function(OpenLoginPage) openLoginPage,
      FutureOr<R> Function(OpenEditUserPage) openEditUserPage,
      FutureOr<R> Function(OpenSendContentPage) openSendContentPage,
      FutureOr<R> Function(OpenPickImagePage) openPickImagePage,
      FutureOr<R> Function(OpenUserProfilePage) openUserProfilePage,
      FutureOr<R> Function(OpenSingleContentPage) openSingleContentPage,
      FutureOr<R> Function(OpenAdjustImagePage) openAdjustImagePage,
      @required FutureOr<R> Function(NavigationEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.PopPage:
        if (popPage == null) break;
        return popPage(this as PopPage);
      case _NavigationEvent.OpenMainUserPage:
        if (openMainUserPage == null) break;
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        if (openLoginPage == null) break;
        return openLoginPage(this as OpenLoginPage);
      case _NavigationEvent.OpenEditUserPage:
        if (openEditUserPage == null) break;
        return openEditUserPage(this as OpenEditUserPage);
      case _NavigationEvent.OpenSendContentPage:
        if (openSendContentPage == null) break;
        return openSendContentPage(this as OpenSendContentPage);
      case _NavigationEvent.OpenPickImagePage:
        if (openPickImagePage == null) break;
        return openPickImagePage(this as OpenPickImagePage);
      case _NavigationEvent.OpenUserProfilePage:
        if (openUserProfilePage == null) break;
        return openUserProfilePage(this as OpenUserProfilePage);
      case _NavigationEvent.OpenSingleContentPage:
        if (openSingleContentPage == null) break;
        return openSingleContentPage(this as OpenSingleContentPage);
      case _NavigationEvent.OpenAdjustImagePage:
        if (openAdjustImagePage == null) break;
        return openAdjustImagePage(this as OpenAdjustImagePage);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(PopPage) popPage,
      FutureOr<void> Function(OpenMainUserPage) openMainUserPage,
      FutureOr<void> Function(OpenLoginPage) openLoginPage,
      FutureOr<void> Function(OpenEditUserPage) openEditUserPage,
      FutureOr<void> Function(OpenSendContentPage) openSendContentPage,
      FutureOr<void> Function(OpenPickImagePage) openPickImagePage,
      FutureOr<void> Function(OpenUserProfilePage) openUserProfilePage,
      FutureOr<void> Function(OpenSingleContentPage) openSingleContentPage,
      FutureOr<void> Function(OpenAdjustImagePage) openAdjustImagePage}) {
    assert(() {
      if (popPage == null &&
          openMainUserPage == null &&
          openLoginPage == null &&
          openEditUserPage == null &&
          openSendContentPage == null &&
          openPickImagePage == null &&
          openUserProfilePage == null &&
          openSingleContentPage == null &&
          openAdjustImagePage == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _NavigationEvent.PopPage:
        if (popPage == null) break;
        return popPage(this as PopPage);
      case _NavigationEvent.OpenMainUserPage:
        if (openMainUserPage == null) break;
        return openMainUserPage(this as OpenMainUserPage);
      case _NavigationEvent.OpenLoginPage:
        if (openLoginPage == null) break;
        return openLoginPage(this as OpenLoginPage);
      case _NavigationEvent.OpenEditUserPage:
        if (openEditUserPage == null) break;
        return openEditUserPage(this as OpenEditUserPage);
      case _NavigationEvent.OpenSendContentPage:
        if (openSendContentPage == null) break;
        return openSendContentPage(this as OpenSendContentPage);
      case _NavigationEvent.OpenPickImagePage:
        if (openPickImagePage == null) break;
        return openPickImagePage(this as OpenPickImagePage);
      case _NavigationEvent.OpenUserProfilePage:
        if (openUserProfilePage == null) break;
        return openUserProfilePage(this as OpenUserProfilePage);
      case _NavigationEvent.OpenSingleContentPage:
        if (openSingleContentPage == null) break;
        return openSingleContentPage(this as OpenSingleContentPage);
      case _NavigationEvent.OpenAdjustImagePage:
        if (openAdjustImagePage == null) break;
        return openAdjustImagePage(this as OpenAdjustImagePage);
    }
  }

  @override
  List get props => const [];
}

@immutable
class PopPage extends NavigationEvent {
  const PopPage._() : super(_NavigationEvent.PopPage);

  factory PopPage() {
    _instance ??= const PopPage._();
    return _instance;
  }

  static PopPage _instance;
}

@immutable
class OpenMainUserPage extends NavigationEvent {
  const OpenMainUserPage._() : super(_NavigationEvent.OpenMainUserPage);

  factory OpenMainUserPage() {
    _instance ??= const OpenMainUserPage._();
    return _instance;
  }

  static OpenMainUserPage _instance;
}

@immutable
class OpenLoginPage extends NavigationEvent {
  const OpenLoginPage._() : super(_NavigationEvent.OpenLoginPage);

  factory OpenLoginPage() {
    _instance ??= const OpenLoginPage._();
    return _instance;
  }

  static OpenLoginPage _instance;
}

@immutable
class OpenEditUserPage extends NavigationEvent {
  const OpenEditUserPage._() : super(_NavigationEvent.OpenEditUserPage);

  factory OpenEditUserPage() {
    _instance ??= const OpenEditUserPage._();
    return _instance;
  }

  static OpenEditUserPage _instance;
}

@immutable
class OpenSendContentPage extends NavigationEvent {
  const OpenSendContentPage({@required this.imagePath})
      : super(_NavigationEvent.OpenSendContentPage);

  final String imagePath;

  @override
  String toString() => 'OpenSendContentPage(imagePath:${this.imagePath})';
  @override
  List get props => [imagePath];
}

@immutable
class OpenPickImagePage extends NavigationEvent {
  const OpenPickImagePage({@required this.onPickedImage, @required this.ratio})
      : super(_NavigationEvent.OpenPickImagePage);

  final Function onPickedImage;

  final double ratio;

  @override
  String toString() =>
      'OpenPickImagePage(onPickedImage:${this.onPickedImage},ratio:${this.ratio})';
  @override
  List get props => [onPickedImage, ratio];
}

@immutable
class OpenUserProfilePage extends NavigationEvent {
  const OpenUserProfilePage({@required this.user})
      : super(_NavigationEvent.OpenUserProfilePage);

  final User user;

  @override
  String toString() => 'OpenUserProfilePage(user:${this.user})';
  @override
  List get props => [user];
}

@immutable
class OpenSingleContentPage extends NavigationEvent {
  const OpenSingleContentPage({@required this.content})
      : super(_NavigationEvent.OpenSingleContentPage);

  final Content content;

  @override
  String toString() => 'OpenSingleContentPage(content:${this.content})';
  @override
  List get props => [content];
}

@immutable
class OpenAdjustImagePage extends NavigationEvent {
  const OpenAdjustImagePage(
      {@required this.editable,
      @required this.path,
      @required this.onPickedImage,
      @required this.ratio})
      : super(_NavigationEvent.OpenAdjustImagePage);

  final bool editable;

  final String path;

  final Function onPickedImage;

  final double ratio;

  @override
  String toString() =>
      'OpenAdjustImagePage(editable:${this.editable},path:${this.path},onPickedImage:${this.onPickedImage},ratio:${this.ratio})';
  @override
  List get props => [editable, path, onPickedImage, ratio];
}
