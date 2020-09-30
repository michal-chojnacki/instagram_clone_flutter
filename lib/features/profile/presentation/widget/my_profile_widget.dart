import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/core/widgets/primary_button.dart';
import 'package:instagram_clone/features/camera/page/pick_image_page.dart';
import 'package:instagram_clone/features/content/presentation/page/init_page.dart';
import 'package:instagram_clone/features/content/presentation/widget/user_contents_grid.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';
import 'package:instagram_clone/features/profile/presentation/page/edit_profile_page.dart';
import 'package:instagram_clone/features/profile/presentation/widget/profile_info_widget.dart';

class MyProfileWidget extends StatefulWidget {
  @override
  _MyProfileWidgetState createState() => _MyProfileWidgetState();
}

class _MyProfileWidgetState extends State<MyProfileWidget> {
  final _editProfileBloc = GetIt.I<EditProfileBloc>();

  @override
  void initState() {
    super.initState();
    _editProfileBloc.sideEffects.listen((sideEffect) => sideEffect.when(
        openInitPage: () => Navigator.of(context).pushReplacement(
            InitPage.route(mode: InitPageMode.PROGRESS_INDICTATOR)),
        updatedProfile: () => {}));
    _editProfileBloc.fetchProfileData();
  }

  @override
  void dispose() {
    super.dispose();
    _editProfileBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
      ),
      body: BlocBuilder<EditProfileBloc, EditProfileState>(
          cubit: _editProfileBloc,
          builder: (context, EditProfileState state) {
            if (state.progressBarVisible) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 16.0),
                        child: ProfileInfoWidget(
                          onBackFromUserListPage: () =>
                              _editProfileBloc.fetchProfileData(),
                          user: state.user,
                          onSelectAvatar: () =>
                              Navigator.of(context).push(PickImagePage.route(
                                  ratio: 1.0,
                                  circleShaped: true,
                                  onImagePicked: (imagePath) {
                                    _editProfileBloc.updateProfileData(
                                        avatarPath: imagePath);
                                    Navigator.of(context).pop();
                                    _editProfileBloc.fetchProfileData();
                                  })),
                        )),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: PrimaryButton(
                          text: 'Edit profile',
                          onPressed: () => Navigator.of(context)
                              .push(EditProfilePage.route())
                              .then(
                                  (_) => _editProfileBloc.fetchProfileData())),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: PrimaryButton(
                        text: 'Logout',
                        light: true,
                        onPressed: _editProfileBloc.logout,
                      ),
                    ),
                    Expanded(
                        child: UserContentsGrid(
                      user: null,
                    )),
                  ],
                ),
              );
            }
          }),
    );
  }
}
