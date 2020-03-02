// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class EditProfileEvent extends Equatable {
  const EditProfileEvent(this._type);

  factory EditProfileEvent.fetchProfileData() = FetchProfileData;

  final _EditProfileEvent _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(FetchProfileData) fetchProfileData}) {
    assert(() {
      if (fetchProfileData == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _EditProfileEvent.FetchProfileData:
        return fetchProfileData(this as FetchProfileData);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(FetchProfileData) fetchProfileData,
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
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(FetchProfileData) fetchProfileData}) {
    assert(() {
      if (fetchProfileData == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _EditProfileEvent.FetchProfileData:
        if (fetchProfileData == null) break;
        return fetchProfileData(this as FetchProfileData);
    }
  }

  @override
  List get props => const [];
}

@immutable
class FetchProfileData extends EditProfileEvent {
  const FetchProfileData._() : super(_EditProfileEvent.FetchProfileData);

  factory FetchProfileData() {
    _instance ??= FetchProfileData._();
    return _instance;
  }

  static FetchProfileData _instance;
}
