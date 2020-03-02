import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_event.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final GetUserDataUseCase _getUserData;

  EditProfileBloc(this._getUserData);

  void fetchProfileData() {
    add(EditProfileEvent.fetchProfileData());
  }

  @override
  EditProfileState get initialState => EditProfileState.loading();

  @override
  Stream<EditProfileState> mapEventToState(EditProfileEvent event) async* {
    if(event is FetchProfileData) {
      yield EditProfileState.loading();
      yield (await _getUserData()).when(success: (result ) =>
        EditProfileState.success(result.data)
      , error: (_) => EditProfileState.success(null)
      );
    }
  }
}
