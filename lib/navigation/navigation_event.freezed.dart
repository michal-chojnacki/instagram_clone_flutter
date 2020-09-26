// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'navigation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

// ignore: unused_element
  PopPage popPage() {
    return const PopPage();
  }

// ignore: unused_element
  OpenMainUserPage openMainUserPage() {
    return const OpenMainUserPage();
  }

// ignore: unused_element
  OpenLoginPage openLoginPage() {
    return const OpenLoginPage();
  }

// ignore: unused_element
  OpenEditUserPage openEditUserPage({@required Function thenFunction}) {
    return OpenEditUserPage(
      thenFunction: thenFunction,
    );
  }

// ignore: unused_element
  OpenSendContentPage openSendContentPage({@required String imagePath}) {
    return OpenSendContentPage(
      imagePath: imagePath,
    );
  }

// ignore: unused_element
  OpenPickImagePage openPickImagePage(
      {@required Function onPickedImage,
      @required double ratio,
      @required bool circleShaped}) {
    return OpenPickImagePage(
      onPickedImage: onPickedImage,
      ratio: ratio,
      circleShaped: circleShaped,
    );
  }

// ignore: unused_element
  OpenUserProfilePage openUserProfilePage({@required User user}) {
    return OpenUserProfilePage(
      user: user,
    );
  }

// ignore: unused_element
  OpenSingleContentPage openSingleContentPage(
      {@required PersonalizedContent content}) {
    return OpenSingleContentPage(
      content: content,
    );
  }

// ignore: unused_element
  OpenAdjustImagePage openAdjustImagePage(
      {@required bool editable,
      @required String path,
      @required Function onPickedImage,
      @required double ratio,
      @required bool circleShaped}) {
    return OpenAdjustImagePage(
      editable: editable,
      path: path,
      onPickedImage: onPickedImage,
      ratio: ratio,
      circleShaped: circleShaped,
    );
  }

// ignore: unused_element
  OpenUserFollowersPage openUserFollowersPage({@required User user}) {
    return OpenUserFollowersPage(
      user: user,
    );
  }

// ignore: unused_element
  OpenUserFolloweesPage openUserFolloweesPage({@required User user}) {
    return OpenUserFolloweesPage(
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationEvent = _$NavigationEventTearOff();

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class $PopPageCopyWith<$Res> {
  factory $PopPageCopyWith(PopPage value, $Res Function(PopPage) then) =
      _$PopPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopPageCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements $PopPageCopyWith<$Res> {
  _$PopPageCopyWithImpl(PopPage _value, $Res Function(PopPage) _then)
      : super(_value, (v) => _then(v as PopPage));

  @override
  PopPage get _value => super._value as PopPage;
}

/// @nodoc
class _$PopPage with DiagnosticableTreeMixin implements PopPage {
  const _$PopPage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.popPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NavigationEvent.popPage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PopPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return popPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (popPage != null) {
      return popPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return popPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (popPage != null) {
      return popPage(this);
    }
    return orElse();
  }
}

abstract class PopPage implements NavigationEvent {
  const factory PopPage() = _$PopPage;
}

/// @nodoc
abstract class $OpenMainUserPageCopyWith<$Res> {
  factory $OpenMainUserPageCopyWith(
          OpenMainUserPage value, $Res Function(OpenMainUserPage) then) =
      _$OpenMainUserPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenMainUserPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenMainUserPageCopyWith<$Res> {
  _$OpenMainUserPageCopyWithImpl(
      OpenMainUserPage _value, $Res Function(OpenMainUserPage) _then)
      : super(_value, (v) => _then(v as OpenMainUserPage));

  @override
  OpenMainUserPage get _value => super._value as OpenMainUserPage;
}

/// @nodoc
class _$OpenMainUserPage
    with DiagnosticableTreeMixin
    implements OpenMainUserPage {
  const _$OpenMainUserPage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openMainUserPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.openMainUserPage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenMainUserPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openMainUserPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openMainUserPage != null) {
      return openMainUserPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openMainUserPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openMainUserPage != null) {
      return openMainUserPage(this);
    }
    return orElse();
  }
}

abstract class OpenMainUserPage implements NavigationEvent {
  const factory OpenMainUserPage() = _$OpenMainUserPage;
}

/// @nodoc
abstract class $OpenLoginPageCopyWith<$Res> {
  factory $OpenLoginPageCopyWith(
          OpenLoginPage value, $Res Function(OpenLoginPage) then) =
      _$OpenLoginPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenLoginPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenLoginPageCopyWith<$Res> {
  _$OpenLoginPageCopyWithImpl(
      OpenLoginPage _value, $Res Function(OpenLoginPage) _then)
      : super(_value, (v) => _then(v as OpenLoginPage));

  @override
  OpenLoginPage get _value => super._value as OpenLoginPage;
}

/// @nodoc
class _$OpenLoginPage with DiagnosticableTreeMixin implements OpenLoginPage {
  const _$OpenLoginPage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openLoginPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.openLoginPage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenLoginPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openLoginPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openLoginPage != null) {
      return openLoginPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openLoginPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openLoginPage != null) {
      return openLoginPage(this);
    }
    return orElse();
  }
}

abstract class OpenLoginPage implements NavigationEvent {
  const factory OpenLoginPage() = _$OpenLoginPage;
}

/// @nodoc
abstract class $OpenEditUserPageCopyWith<$Res> {
  factory $OpenEditUserPageCopyWith(
          OpenEditUserPage value, $Res Function(OpenEditUserPage) then) =
      _$OpenEditUserPageCopyWithImpl<$Res>;
  $Res call({Function thenFunction});
}

/// @nodoc
class _$OpenEditUserPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenEditUserPageCopyWith<$Res> {
  _$OpenEditUserPageCopyWithImpl(
      OpenEditUserPage _value, $Res Function(OpenEditUserPage) _then)
      : super(_value, (v) => _then(v as OpenEditUserPage));

  @override
  OpenEditUserPage get _value => super._value as OpenEditUserPage;

  @override
  $Res call({
    Object thenFunction = freezed,
  }) {
    return _then(OpenEditUserPage(
      thenFunction: thenFunction == freezed
          ? _value.thenFunction
          : thenFunction as Function,
    ));
  }
}

/// @nodoc
class _$OpenEditUserPage
    with DiagnosticableTreeMixin
    implements OpenEditUserPage {
  const _$OpenEditUserPage({@required this.thenFunction})
      : assert(thenFunction != null);

  @override
  final Function thenFunction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openEditUserPage(thenFunction: $thenFunction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.openEditUserPage'))
      ..add(DiagnosticsProperty('thenFunction', thenFunction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenEditUserPage &&
            (identical(other.thenFunction, thenFunction) ||
                const DeepCollectionEquality()
                    .equals(other.thenFunction, thenFunction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(thenFunction);

  @override
  $OpenEditUserPageCopyWith<OpenEditUserPage> get copyWith =>
      _$OpenEditUserPageCopyWithImpl<OpenEditUserPage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openEditUserPage(thenFunction);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openEditUserPage != null) {
      return openEditUserPage(thenFunction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openEditUserPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openEditUserPage != null) {
      return openEditUserPage(this);
    }
    return orElse();
  }
}

abstract class OpenEditUserPage implements NavigationEvent {
  const factory OpenEditUserPage({@required Function thenFunction}) =
      _$OpenEditUserPage;

  Function get thenFunction;
  $OpenEditUserPageCopyWith<OpenEditUserPage> get copyWith;
}

/// @nodoc
abstract class $OpenSendContentPageCopyWith<$Res> {
  factory $OpenSendContentPageCopyWith(
          OpenSendContentPage value, $Res Function(OpenSendContentPage) then) =
      _$OpenSendContentPageCopyWithImpl<$Res>;
  $Res call({String imagePath});
}

/// @nodoc
class _$OpenSendContentPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenSendContentPageCopyWith<$Res> {
  _$OpenSendContentPageCopyWithImpl(
      OpenSendContentPage _value, $Res Function(OpenSendContentPage) _then)
      : super(_value, (v) => _then(v as OpenSendContentPage));

  @override
  OpenSendContentPage get _value => super._value as OpenSendContentPage;

  @override
  $Res call({
    Object imagePath = freezed,
  }) {
    return _then(OpenSendContentPage(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
    ));
  }
}

/// @nodoc
class _$OpenSendContentPage
    with DiagnosticableTreeMixin
    implements OpenSendContentPage {
  const _$OpenSendContentPage({@required this.imagePath})
      : assert(imagePath != null);

  @override
  final String imagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openSendContentPage(imagePath: $imagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.openSendContentPage'))
      ..add(DiagnosticsProperty('imagePath', imagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenSendContentPage &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imagePath);

  @override
  $OpenSendContentPageCopyWith<OpenSendContentPage> get copyWith =>
      _$OpenSendContentPageCopyWithImpl<OpenSendContentPage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openSendContentPage(imagePath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openSendContentPage != null) {
      return openSendContentPage(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openSendContentPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openSendContentPage != null) {
      return openSendContentPage(this);
    }
    return orElse();
  }
}

abstract class OpenSendContentPage implements NavigationEvent {
  const factory OpenSendContentPage({@required String imagePath}) =
      _$OpenSendContentPage;

  String get imagePath;
  $OpenSendContentPageCopyWith<OpenSendContentPage> get copyWith;
}

/// @nodoc
abstract class $OpenPickImagePageCopyWith<$Res> {
  factory $OpenPickImagePageCopyWith(
          OpenPickImagePage value, $Res Function(OpenPickImagePage) then) =
      _$OpenPickImagePageCopyWithImpl<$Res>;
  $Res call({Function onPickedImage, double ratio, bool circleShaped});
}

/// @nodoc
class _$OpenPickImagePageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenPickImagePageCopyWith<$Res> {
  _$OpenPickImagePageCopyWithImpl(
      OpenPickImagePage _value, $Res Function(OpenPickImagePage) _then)
      : super(_value, (v) => _then(v as OpenPickImagePage));

  @override
  OpenPickImagePage get _value => super._value as OpenPickImagePage;

  @override
  $Res call({
    Object onPickedImage = freezed,
    Object ratio = freezed,
    Object circleShaped = freezed,
  }) {
    return _then(OpenPickImagePage(
      onPickedImage: onPickedImage == freezed
          ? _value.onPickedImage
          : onPickedImage as Function,
      ratio: ratio == freezed ? _value.ratio : ratio as double,
      circleShaped:
          circleShaped == freezed ? _value.circleShaped : circleShaped as bool,
    ));
  }
}

/// @nodoc
class _$OpenPickImagePage
    with DiagnosticableTreeMixin
    implements OpenPickImagePage {
  const _$OpenPickImagePage(
      {@required this.onPickedImage,
      @required this.ratio,
      @required this.circleShaped})
      : assert(onPickedImage != null),
        assert(ratio != null),
        assert(circleShaped != null);

  @override
  final Function onPickedImage;
  @override
  final double ratio;
  @override
  final bool circleShaped;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openPickImagePage(onPickedImage: $onPickedImage, ratio: $ratio, circleShaped: $circleShaped)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.openPickImagePage'))
      ..add(DiagnosticsProperty('onPickedImage', onPickedImage))
      ..add(DiagnosticsProperty('ratio', ratio))
      ..add(DiagnosticsProperty('circleShaped', circleShaped));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenPickImagePage &&
            (identical(other.onPickedImage, onPickedImage) ||
                const DeepCollectionEquality()
                    .equals(other.onPickedImage, onPickedImage)) &&
            (identical(other.ratio, ratio) ||
                const DeepCollectionEquality().equals(other.ratio, ratio)) &&
            (identical(other.circleShaped, circleShaped) ||
                const DeepCollectionEquality()
                    .equals(other.circleShaped, circleShaped)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(onPickedImage) ^
      const DeepCollectionEquality().hash(ratio) ^
      const DeepCollectionEquality().hash(circleShaped);

  @override
  $OpenPickImagePageCopyWith<OpenPickImagePage> get copyWith =>
      _$OpenPickImagePageCopyWithImpl<OpenPickImagePage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openPickImagePage(onPickedImage, ratio, circleShaped);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openPickImagePage != null) {
      return openPickImagePage(onPickedImage, ratio, circleShaped);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openPickImagePage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openPickImagePage != null) {
      return openPickImagePage(this);
    }
    return orElse();
  }
}

abstract class OpenPickImagePage implements NavigationEvent {
  const factory OpenPickImagePage(
      {@required Function onPickedImage,
      @required double ratio,
      @required bool circleShaped}) = _$OpenPickImagePage;

  Function get onPickedImage;
  double get ratio;
  bool get circleShaped;
  $OpenPickImagePageCopyWith<OpenPickImagePage> get copyWith;
}

/// @nodoc
abstract class $OpenUserProfilePageCopyWith<$Res> {
  factory $OpenUserProfilePageCopyWith(
          OpenUserProfilePage value, $Res Function(OpenUserProfilePage) then) =
      _$OpenUserProfilePageCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$OpenUserProfilePageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenUserProfilePageCopyWith<$Res> {
  _$OpenUserProfilePageCopyWithImpl(
      OpenUserProfilePage _value, $Res Function(OpenUserProfilePage) _then)
      : super(_value, (v) => _then(v as OpenUserProfilePage));

  @override
  OpenUserProfilePage get _value => super._value as OpenUserProfilePage;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(OpenUserProfilePage(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$OpenUserProfilePage
    with DiagnosticableTreeMixin
    implements OpenUserProfilePage {
  const _$OpenUserProfilePage({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openUserProfilePage(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.openUserProfilePage'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenUserProfilePage &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $OpenUserProfilePageCopyWith<OpenUserProfilePage> get copyWith =>
      _$OpenUserProfilePageCopyWithImpl<OpenUserProfilePage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openUserProfilePage(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openUserProfilePage != null) {
      return openUserProfilePage(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openUserProfilePage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openUserProfilePage != null) {
      return openUserProfilePage(this);
    }
    return orElse();
  }
}

abstract class OpenUserProfilePage implements NavigationEvent {
  const factory OpenUserProfilePage({@required User user}) =
      _$OpenUserProfilePage;

  User get user;
  $OpenUserProfilePageCopyWith<OpenUserProfilePage> get copyWith;
}

/// @nodoc
abstract class $OpenSingleContentPageCopyWith<$Res> {
  factory $OpenSingleContentPageCopyWith(OpenSingleContentPage value,
          $Res Function(OpenSingleContentPage) then) =
      _$OpenSingleContentPageCopyWithImpl<$Res>;
  $Res call({PersonalizedContent content});

  $PersonalizedContentCopyWith<$Res> get content;
}

/// @nodoc
class _$OpenSingleContentPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenSingleContentPageCopyWith<$Res> {
  _$OpenSingleContentPageCopyWithImpl(
      OpenSingleContentPage _value, $Res Function(OpenSingleContentPage) _then)
      : super(_value, (v) => _then(v as OpenSingleContentPage));

  @override
  OpenSingleContentPage get _value => super._value as OpenSingleContentPage;

  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(OpenSingleContentPage(
      content:
          content == freezed ? _value.content : content as PersonalizedContent,
    ));
  }

  @override
  $PersonalizedContentCopyWith<$Res> get content {
    if (_value.content == null) {
      return null;
    }
    return $PersonalizedContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
class _$OpenSingleContentPage
    with DiagnosticableTreeMixin
    implements OpenSingleContentPage {
  const _$OpenSingleContentPage({@required this.content})
      : assert(content != null);

  @override
  final PersonalizedContent content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openSingleContentPage(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NavigationEvent.openSingleContentPage'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenSingleContentPage &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @override
  $OpenSingleContentPageCopyWith<OpenSingleContentPage> get copyWith =>
      _$OpenSingleContentPageCopyWithImpl<OpenSingleContentPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openSingleContentPage(content);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openSingleContentPage != null) {
      return openSingleContentPage(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openSingleContentPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openSingleContentPage != null) {
      return openSingleContentPage(this);
    }
    return orElse();
  }
}

abstract class OpenSingleContentPage implements NavigationEvent {
  const factory OpenSingleContentPage({@required PersonalizedContent content}) =
      _$OpenSingleContentPage;

  PersonalizedContent get content;
  $OpenSingleContentPageCopyWith<OpenSingleContentPage> get copyWith;
}

/// @nodoc
abstract class $OpenAdjustImagePageCopyWith<$Res> {
  factory $OpenAdjustImagePageCopyWith(
          OpenAdjustImagePage value, $Res Function(OpenAdjustImagePage) then) =
      _$OpenAdjustImagePageCopyWithImpl<$Res>;
  $Res call(
      {bool editable,
      String path,
      Function onPickedImage,
      double ratio,
      bool circleShaped});
}

/// @nodoc
class _$OpenAdjustImagePageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenAdjustImagePageCopyWith<$Res> {
  _$OpenAdjustImagePageCopyWithImpl(
      OpenAdjustImagePage _value, $Res Function(OpenAdjustImagePage) _then)
      : super(_value, (v) => _then(v as OpenAdjustImagePage));

  @override
  OpenAdjustImagePage get _value => super._value as OpenAdjustImagePage;

  @override
  $Res call({
    Object editable = freezed,
    Object path = freezed,
    Object onPickedImage = freezed,
    Object ratio = freezed,
    Object circleShaped = freezed,
  }) {
    return _then(OpenAdjustImagePage(
      editable: editable == freezed ? _value.editable : editable as bool,
      path: path == freezed ? _value.path : path as String,
      onPickedImage: onPickedImage == freezed
          ? _value.onPickedImage
          : onPickedImage as Function,
      ratio: ratio == freezed ? _value.ratio : ratio as double,
      circleShaped:
          circleShaped == freezed ? _value.circleShaped : circleShaped as bool,
    ));
  }
}

/// @nodoc
class _$OpenAdjustImagePage
    with DiagnosticableTreeMixin
    implements OpenAdjustImagePage {
  const _$OpenAdjustImagePage(
      {@required this.editable,
      @required this.path,
      @required this.onPickedImage,
      @required this.ratio,
      @required this.circleShaped})
      : assert(editable != null),
        assert(path != null),
        assert(onPickedImage != null),
        assert(ratio != null),
        assert(circleShaped != null);

  @override
  final bool editable;
  @override
  final String path;
  @override
  final Function onPickedImage;
  @override
  final double ratio;
  @override
  final bool circleShaped;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openAdjustImagePage(editable: $editable, path: $path, onPickedImage: $onPickedImage, ratio: $ratio, circleShaped: $circleShaped)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.openAdjustImagePage'))
      ..add(DiagnosticsProperty('editable', editable))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('onPickedImage', onPickedImage))
      ..add(DiagnosticsProperty('ratio', ratio))
      ..add(DiagnosticsProperty('circleShaped', circleShaped));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenAdjustImagePage &&
            (identical(other.editable, editable) ||
                const DeepCollectionEquality()
                    .equals(other.editable, editable)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.onPickedImage, onPickedImage) ||
                const DeepCollectionEquality()
                    .equals(other.onPickedImage, onPickedImage)) &&
            (identical(other.ratio, ratio) ||
                const DeepCollectionEquality().equals(other.ratio, ratio)) &&
            (identical(other.circleShaped, circleShaped) ||
                const DeepCollectionEquality()
                    .equals(other.circleShaped, circleShaped)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(editable) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(onPickedImage) ^
      const DeepCollectionEquality().hash(ratio) ^
      const DeepCollectionEquality().hash(circleShaped);

  @override
  $OpenAdjustImagePageCopyWith<OpenAdjustImagePage> get copyWith =>
      _$OpenAdjustImagePageCopyWithImpl<OpenAdjustImagePage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openAdjustImagePage(
        editable, path, onPickedImage, ratio, circleShaped);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openAdjustImagePage != null) {
      return openAdjustImagePage(
          editable, path, onPickedImage, ratio, circleShaped);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openAdjustImagePage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openAdjustImagePage != null) {
      return openAdjustImagePage(this);
    }
    return orElse();
  }
}

abstract class OpenAdjustImagePage implements NavigationEvent {
  const factory OpenAdjustImagePage(
      {@required bool editable,
      @required String path,
      @required Function onPickedImage,
      @required double ratio,
      @required bool circleShaped}) = _$OpenAdjustImagePage;

  bool get editable;
  String get path;
  Function get onPickedImage;
  double get ratio;
  bool get circleShaped;
  $OpenAdjustImagePageCopyWith<OpenAdjustImagePage> get copyWith;
}

/// @nodoc
abstract class $OpenUserFollowersPageCopyWith<$Res> {
  factory $OpenUserFollowersPageCopyWith(OpenUserFollowersPage value,
          $Res Function(OpenUserFollowersPage) then) =
      _$OpenUserFollowersPageCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$OpenUserFollowersPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenUserFollowersPageCopyWith<$Res> {
  _$OpenUserFollowersPageCopyWithImpl(
      OpenUserFollowersPage _value, $Res Function(OpenUserFollowersPage) _then)
      : super(_value, (v) => _then(v as OpenUserFollowersPage));

  @override
  OpenUserFollowersPage get _value => super._value as OpenUserFollowersPage;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(OpenUserFollowersPage(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$OpenUserFollowersPage
    with DiagnosticableTreeMixin
    implements OpenUserFollowersPage {
  const _$OpenUserFollowersPage({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openUserFollowersPage(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NavigationEvent.openUserFollowersPage'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenUserFollowersPage &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $OpenUserFollowersPageCopyWith<OpenUserFollowersPage> get copyWith =>
      _$OpenUserFollowersPageCopyWithImpl<OpenUserFollowersPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openUserFollowersPage(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openUserFollowersPage != null) {
      return openUserFollowersPage(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openUserFollowersPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openUserFollowersPage != null) {
      return openUserFollowersPage(this);
    }
    return orElse();
  }
}

abstract class OpenUserFollowersPage implements NavigationEvent {
  const factory OpenUserFollowersPage({@required User user}) =
      _$OpenUserFollowersPage;

  User get user;
  $OpenUserFollowersPageCopyWith<OpenUserFollowersPage> get copyWith;
}

/// @nodoc
abstract class $OpenUserFolloweesPageCopyWith<$Res> {
  factory $OpenUserFolloweesPageCopyWith(OpenUserFolloweesPage value,
          $Res Function(OpenUserFolloweesPage) then) =
      _$OpenUserFolloweesPageCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$OpenUserFolloweesPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $OpenUserFolloweesPageCopyWith<$Res> {
  _$OpenUserFolloweesPageCopyWithImpl(
      OpenUserFolloweesPage _value, $Res Function(OpenUserFolloweesPage) _then)
      : super(_value, (v) => _then(v as OpenUserFolloweesPage));

  @override
  OpenUserFolloweesPage get _value => super._value as OpenUserFolloweesPage;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(OpenUserFolloweesPage(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$OpenUserFolloweesPage
    with DiagnosticableTreeMixin
    implements OpenUserFolloweesPage {
  const _$OpenUserFolloweesPage({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.openUserFolloweesPage(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NavigationEvent.openUserFolloweesPage'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenUserFolloweesPage &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $OpenUserFolloweesPageCopyWith<OpenUserFolloweesPage> get copyWith =>
      _$OpenUserFolloweesPageCopyWithImpl<OpenUserFolloweesPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result popPage(),
    @required Result openMainUserPage(),
    @required Result openLoginPage(),
    @required Result openEditUserPage(Function thenFunction),
    @required Result openSendContentPage(String imagePath),
    @required
        Result openPickImagePage(
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserProfilePage(User user),
    @required Result openSingleContentPage(PersonalizedContent content),
    @required
        Result openAdjustImagePage(bool editable, String path,
            Function onPickedImage, double ratio, bool circleShaped),
    @required Result openUserFollowersPage(User user),
    @required Result openUserFolloweesPage(User user),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openUserFolloweesPage(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result popPage(),
    Result openMainUserPage(),
    Result openLoginPage(),
    Result openEditUserPage(Function thenFunction),
    Result openSendContentPage(String imagePath),
    Result openPickImagePage(
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserProfilePage(User user),
    Result openSingleContentPage(PersonalizedContent content),
    Result openAdjustImagePage(bool editable, String path,
        Function onPickedImage, double ratio, bool circleShaped),
    Result openUserFollowersPage(User user),
    Result openUserFolloweesPage(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openUserFolloweesPage != null) {
      return openUserFolloweesPage(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result popPage(PopPage value),
    @required Result openMainUserPage(OpenMainUserPage value),
    @required Result openLoginPage(OpenLoginPage value),
    @required Result openEditUserPage(OpenEditUserPage value),
    @required Result openSendContentPage(OpenSendContentPage value),
    @required Result openPickImagePage(OpenPickImagePage value),
    @required Result openUserProfilePage(OpenUserProfilePage value),
    @required Result openSingleContentPage(OpenSingleContentPage value),
    @required Result openAdjustImagePage(OpenAdjustImagePage value),
    @required Result openUserFollowersPage(OpenUserFollowersPage value),
    @required Result openUserFolloweesPage(OpenUserFolloweesPage value),
  }) {
    assert(popPage != null);
    assert(openMainUserPage != null);
    assert(openLoginPage != null);
    assert(openEditUserPage != null);
    assert(openSendContentPage != null);
    assert(openPickImagePage != null);
    assert(openUserProfilePage != null);
    assert(openSingleContentPage != null);
    assert(openAdjustImagePage != null);
    assert(openUserFollowersPage != null);
    assert(openUserFolloweesPage != null);
    return openUserFolloweesPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result popPage(PopPage value),
    Result openMainUserPage(OpenMainUserPage value),
    Result openLoginPage(OpenLoginPage value),
    Result openEditUserPage(OpenEditUserPage value),
    Result openSendContentPage(OpenSendContentPage value),
    Result openPickImagePage(OpenPickImagePage value),
    Result openUserProfilePage(OpenUserProfilePage value),
    Result openSingleContentPage(OpenSingleContentPage value),
    Result openAdjustImagePage(OpenAdjustImagePage value),
    Result openUserFollowersPage(OpenUserFollowersPage value),
    Result openUserFolloweesPage(OpenUserFolloweesPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openUserFolloweesPage != null) {
      return openUserFolloweesPage(this);
    }
    return orElse();
  }
}

abstract class OpenUserFolloweesPage implements NavigationEvent {
  const factory OpenUserFolloweesPage({@required User user}) =
      _$OpenUserFolloweesPage;

  User get user;
  $OpenUserFolloweesPageCopyWith<OpenUserFolloweesPage> get copyWith;
}
