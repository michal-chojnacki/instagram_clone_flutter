import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart'
    as model;
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';
import 'package:instagram_clone/features/profile/presentation/profile_info_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final _navigationBloc = GetIt.I<NavigationBloc>();
  final _editProfileBloc = GetIt.I<EditProfileBloc>();

  @override
  void initState() {
    super.initState();
    _editProfileBloc.fetchProfileData();
  }

  @override
  void dispose() {
    super.dispose();
    _editProfileBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _editProfileBloc,
        builder: (context, EditProfileState state) {
          if (state.progressBarVisible) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(16.0),
                      child: ProfileInfoWidget(
                        user: state.user,
                        onSelectAvatar: getImage,
                        onEditProfile: () =>
                            {_navigationBloc.openEditProfilePage()},
                      )),
                  Expanded(child: Center(child: Text('Profile'))),
                ],
              ),
            );
          }
        });
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    print('onSelectAvatar : $image');
  }
}
