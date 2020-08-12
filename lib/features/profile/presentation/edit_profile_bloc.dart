import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/domain/update_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final NavigationBloc _navigationBloc;
  final GetUserDataUseCase _getUserData;
  final UpdateUserDataUseCase _updateUserDataUseCase;

  EditProfileBloc(
      this._navigationBloc, this._getUserData, this._updateUserDataUseCase)
      : super(EditProfileState.loading());

  void fetchProfileData() {
    add(EditProfileEvent.fetchProfileData());
  }

  void openEditProfilePage() {
    _navigationBloc.openEditProfilePage();
  }

  void openPickImagePage() {
    _navigationBloc.openPickImagePage(
        ratio: 1.0,
        circleShaped: true,
        onImagePicked: (imagePath) {
          updateProfileData(avatarPath: imagePath);
          closeScreen();
        });
  }

  void updateProfileData(
      {String avatarPath, String bio, String username, String fullname}) {
    add(EditProfileEvent.updateProfileData(
        avatarPath: avatarPath,
        username: username,
        bio: bio,
        fullname: fullname));
  }

  void closeScreen() {
    _navigationBloc.pop();
  }

  @override
  Stream<EditProfileState> mapEventToState(EditProfileEvent event) {
    return event.when(
        fetchProfileData: (event) => _mapFetchProfileData(event),
        updateProfileData: (event) => _mapUpdateProfileData(event));
  }

  Stream<EditProfileState> _mapFetchProfileData(FetchProfileData event) async* {
    yield EditProfileState.loading();
    yield (await _getUserData()).when(
        success: (result) => EditProfileState.success(result.data),
        error: (_) => EditProfileState.success(null));
  }

  Stream<EditProfileState> _mapUpdateProfileData(
      UpdateProfileData event) async* {
    (await _updateUserDataUseCase(
            avatarPath: event.avatarPath,
            bio: event.bio,
            username: event.username,
            fullname: event.fullname))
        .when(success: (_) => {fetchProfileData()}, error: (_) => null);
  }
}
