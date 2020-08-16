// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class EditProfileEvent extends Equatable {
  const EditProfileEvent(this._type);

  factory EditProfileEvent.fetchProfileData() = FetchProfileData;

  factory EditProfileEvent.updateProfileData(
      {@required String avatarPath,
      @required String username,
      @required String fullname,
      @required String bio}) = UpdateProfileData;

  factory EditProfileEvent.logout() = Logout;

  final _EditProfileEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(FetchProfileData) fetchProfileData,
      @required R Function(UpdateProfileData) updateProfileData,
      @required R Function(Logout) logout}) {
    assert(() {
      if (fetchProfileData == null ||
          updateProfileData == null ||
          logout == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _EditProfileEvent.FetchProfileData:
        return fetchProfileData(this as FetchProfileData);
      case _EditProfileEvent.UpdateProfileData:
        return updateProfileData(this as UpdateProfileData);
      case _EditProfileEvent.Logout:
        return logout(this as Logout);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(FetchProfileData) fetchProfileData,
      @required FutureOr<R> Function(UpdateProfileData) updateProfileData,
      @required FutureOr<R> Function(Logout) logout}) {
    assert(() {
      if (fetchProfileData == null ||
          updateProfileData == null ||
          logout == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _EditProfileEvent.FetchProfileData:
        return fetchProfileData(this as FetchProfileData);
      case _EditProfileEvent.UpdateProfileData:
        return updateProfileData(this as UpdateProfileData);
      case _EditProfileEvent.Logout:
        return logout(this as Logout);
    }
  }

  R whenOrElse<R>(
      {R Function(FetchProfileData) fetchProfileData,
      R Function(UpdateProfileData) updateProfileData,
      R Function(Logout) logout,
      @required R Function(EditProfileEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _EditProfileEvent.FetchProfileData:
        if (fetchProfileData == null) break;
        return fetchProfileData(this as FetchProfileData);
      case _EditProfileEvent.UpdateProfileData:
        if (updateProfileData == null) break;
        return updateProfileData(this as UpdateProfileData);
      case _EditProfileEvent.Logout:
        if (logout == null) break;
        return logout(this as Logout);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(FetchProfileData) fetchProfileData,
      FutureOr<R> Function(UpdateProfileData) updateProfileData,
      FutureOr<R> Function(Logout) logout,
      @required FutureOr<R> Function(EditProfileEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _EditProfileEvent.FetchProfileData:
        if (fetchProfileData == null) break;
        return fetchProfileData(this as FetchProfileData);
      case _EditProfileEvent.UpdateProfileData:
        if (updateProfileData == null) break;
        return updateProfileData(this as UpdateProfileData);
      case _EditProfileEvent.Logout:
        if (logout == null) break;
        return logout(this as Logout);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(FetchProfileData) fetchProfileData,
      FutureOr<void> Function(UpdateProfileData) updateProfileData,
      FutureOr<void> Function(Logout) logout}) {
    assert(() {
      if (fetchProfileData == null &&
          updateProfileData == null &&
          logout == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _EditProfileEvent.FetchProfileData:
        if (fetchProfileData == null) break;
        return fetchProfileData(this as FetchProfileData);
      case _EditProfileEvent.UpdateProfileData:
        if (updateProfileData == null) break;
        return updateProfileData(this as UpdateProfileData);
      case _EditProfileEvent.Logout:
        if (logout == null) break;
        return logout(this as Logout);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchProfileData extends EditProfileEvent {
  const FetchProfileData._() : super(_EditProfileEvent.FetchProfileData);

  factory FetchProfileData() {
    _instance ??= const FetchProfileData._();
    return _instance;
  }

  static FetchProfileData _instance;
}

@immutable
class UpdateProfileData extends EditProfileEvent {
  const UpdateProfileData(
      {@required this.avatarPath,
      @required this.username,
      @required this.fullname,
      @required this.bio})
      : super(_EditProfileEvent.UpdateProfileData);

  final String avatarPath;

  final String username;

  final String fullname;

  final String bio;

  @override
  String toString() =>
      'UpdateProfileData(avatarPath:${this.avatarPath},username:${this.username},fullname:${this.fullname},bio:${this.bio})';
  @override
  List get props => [avatarPath, username, fullname, bio];
}

@immutable
class Logout extends EditProfileEvent {
  const Logout._() : super(_EditProfileEvent.Logout);

  factory Logout() {
    _instance ??= const Logout._();
    return _instance;
  }

  static Logout _instance;
}
