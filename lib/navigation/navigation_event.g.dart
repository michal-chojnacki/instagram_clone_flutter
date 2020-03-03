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
      {@required Function onPickedImage}) = OpenPickImagePage;

  factory NavigationEvent.openUserProfilePage({@required User user}) =
      OpenUserProfilePage;

  final _NavigationEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
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
          FutureOr<R> Function(OpenUserProfilePage) openUserProfilePage}) {
    assert(() {
      if (popPage == null ||
          openMainUserPage == null ||
          openLoginPage == null ||
          openEditUserPage == null ||
          openSendContentPage == null ||
          openPickImagePage == null ||
          openUserProfilePage == null) {
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
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(PopPage) popPage,
      FutureOr<R> Function(OpenMainUserPage) openMainUserPage,
      FutureOr<R> Function(OpenLoginPage) openLoginPage,
      FutureOr<R> Function(OpenEditUserPage) openEditUserPage,
      FutureOr<R> Function(OpenSendContentPage) openSendContentPage,
      FutureOr<R> Function(OpenPickImagePage) openPickImagePage,
      FutureOr<R> Function(OpenUserProfilePage) openUserProfilePage,
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
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(PopPage) popPage,
      FutureOr<void> Function(OpenMainUserPage) openMainUserPage,
      FutureOr<void> Function(OpenLoginPage) openLoginPage,
      FutureOr<void> Function(OpenEditUserPage) openEditUserPage,
      FutureOr<void> Function(OpenSendContentPage) openSendContentPage,
      FutureOr<void> Function(OpenPickImagePage) openPickImagePage,
      FutureOr<void> Function(OpenUserProfilePage) openUserProfilePage}) {
    assert(() {
      if (popPage == null &&
          openMainUserPage == null &&
          openLoginPage == null &&
          openEditUserPage == null &&
          openSendContentPage == null &&
          openPickImagePage == null &&
          openUserProfilePage == null) {
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
    }
  }

  @override
  List get props => const [];
}

@immutable
class PopPage extends NavigationEvent {
  const PopPage._() : super(_NavigationEvent.PopPage);

  factory PopPage() {
    _instance ??= PopPage._();
    return _instance;
  }

  static PopPage _instance;
}

@immutable
class OpenMainUserPage extends NavigationEvent {
  const OpenMainUserPage._() : super(_NavigationEvent.OpenMainUserPage);

  factory OpenMainUserPage() {
    _instance ??= OpenMainUserPage._();
    return _instance;
  }

  static OpenMainUserPage _instance;
}

@immutable
class OpenLoginPage extends NavigationEvent {
  const OpenLoginPage._() : super(_NavigationEvent.OpenLoginPage);

  factory OpenLoginPage() {
    _instance ??= OpenLoginPage._();
    return _instance;
  }

  static OpenLoginPage _instance;
}

@immutable
class OpenEditUserPage extends NavigationEvent {
  const OpenEditUserPage._() : super(_NavigationEvent.OpenEditUserPage);

  factory OpenEditUserPage() {
    _instance ??= OpenEditUserPage._();
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
  const OpenPickImagePage({@required this.onPickedImage})
      : super(_NavigationEvent.OpenPickImagePage);

  final Function onPickedImage;

  @override
  String toString() => 'OpenPickImagePage(onPickedImage:${this.onPickedImage})';
  @override
  List get props => [onPickedImage];
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
