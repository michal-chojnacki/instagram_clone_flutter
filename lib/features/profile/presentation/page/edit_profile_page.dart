import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_state.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _editProfileBloc = GetIt.I<EditProfileBloc>();
  final _navigationBloc = GetIt.I<NavigationBloc>();
  final _nameTextEditingController = TextEditingController();
  final _usernameTextEditingController = TextEditingController();
  final _bioTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _editProfileBloc.fetchProfileData();
  }

  @override
  void dispose() {
    super.dispose();
    _editProfileBloc.close();
    _nameTextEditingController.dispose();
    _usernameTextEditingController.dispose();
    _bioTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => _navigationBloc.pop(),
          ),
          title: const Text('Edit profile'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check),
              onPressed: _updateProfile,
            )
          ],
        ),
        body: BlocBuilder(
            bloc: _editProfileBloc,
            builder: (context, EditProfileState state) {
              if (state.user != null) {
                _usernameTextEditingController.text = state.user.username ?? "";
                _bioTextEditingController.text = state.user.bio ?? "";
                _nameTextEditingController.text = state.user.name ?? "";
              } else {
                _usernameTextEditingController.text = "";
                _bioTextEditingController.text = "";
                _nameTextEditingController.text = "";
              }
              if (state.progressBarVisible) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Column(children: <Widget>[
                      InkWell(
                        onTap: () => _pickImage(context),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 64.0,
                              backgroundColor: Colors.black,
                              backgroundImage: NetworkImage(
                                state.user.avatar.url,
                              ),
                            ),
                            Text('Zmień zdjęcie profilowe'),
                          ],
                        ),
                      ),
                      TextFormField(
                        controller: _nameTextEditingController,
                        decoration: InputDecoration(labelText: 'Name'),
                      ),
                      TextFormField(
                        controller: _usernameTextEditingController,
                        decoration: InputDecoration(labelText: 'Username'),
                      ),
                      TextFormField(
                        controller: _bioTextEditingController,
                        decoration: InputDecoration(labelText: 'Bio'),
                      ),
                    ]));
              }
            }));
  }

  void _pickImage(BuildContext context) {
    _navigationBloc.openPickImagePage(onImagePicked: (imagePath) {
      _editProfileBloc.updateProfileData(avatarPath: imagePath);
      _navigationBloc.pop();
    });
  }

  Future<void> _updateProfile() async {
    final user = _editProfileBloc.state.user;
    if (user == null) {
      return;
    }
    var name = _nameTextEditingController.text;
    var username = _usernameTextEditingController.text;
    var bio = _bioTextEditingController.text;
    username = (username == user.username) ? null : username;
    name = (name == user.name) ? null : name;
    bio = (bio == user.bio) ? null : bio;
    _editProfileBloc.updateProfileData(
        username: username, bio: bio, name: name);
    _navigationBloc.pop();
  }
}
