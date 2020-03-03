import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';
import 'package:instagram_clone/features/profile/presentation/profile_info_widget.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class MyProfileWidget extends StatefulWidget {
  @override
  _MyProfileWidgetState createState() => _MyProfileWidgetState();
}

class _MyProfileWidgetState extends State<MyProfileWidget> {
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
                        onSelectAvatar: () => _pickImage(context),
                      )),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "Edit profile",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => {
                        _navigationBloc.openEditProfilePage()
                      },
                    ),
                  ),
                  Expanded(child: Center(child: Text('Profile'))),
                ],
              ),
            );
          }
        });
  }

  void _pickImage(BuildContext context) {
    _navigationBloc.openPickImagePage(onImagePicked: (imagePath) {
        Navigator.of(context).pop();
    });
  }
}