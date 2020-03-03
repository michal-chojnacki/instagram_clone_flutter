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
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Edit profile'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.check),
              onPressed: () => Navigator.of(context).pop(),)
          ],
        ),
        body: BlocBuilder(
            bloc: _editProfileBloc,
            builder: (context, EditProfileState state) {
              if (state.progressBarVisible) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Column(children: <Widget>[
                      InkWell(
                        onTap: () => _pickImage(context),
                        child: Column(children: <Widget>[
                          CircleAvatar(
                            radius: 64.0,
                            backgroundColor: Colors.black,
                            backgroundImage: NetworkImage(
                              state.user.avatar.url,
                            ),
                          ),
                          Text('Zmień zdjęcie profilowe'),
                        ],),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Name'),
                      ),
                      TextFormField(
                        initialValue: state.user.username,
                        decoration: InputDecoration(labelText: 'Username'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Bio'),
                      ),
                    ]));
              }
            }
        ));
  }

  void _pickImage(BuildContext context) {
    _navigationBloc.openPickImagePage(onImagePicked: (imagePath) {
      Navigator.of(context).pop();
    });
  }
}
