import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/core/bloc_hooks.dart';
import 'package:instagram_clone/core/widgets/network_image_with_fallback.dart';
import 'package:instagram_clone/features/camera/page/pick_image_page.dart';
import 'package:instagram_clone/features/content/presentation/page/init_page.dart';
import 'package:instagram_clone/features/profile/presentation/edit_profile_bloc.dart';

class EditProfilePage extends HookWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => EditProfilePage());
  }

  EditProfilePage() {
    editProfileBloc.fetchProfileData();
  }

  final editProfileBloc = GetIt.I<EditProfileBloc>();

  @override
  Widget build(BuildContext context) {
    final fullnameTextEditingController = useTextEditingController();
    final usernameTextEditingController = useTextEditingController();
    final bioTextEditingController = useTextEditingController();
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop()),
          title: const Text('Edit profile'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () => _updateProfile(
                  context,
                  fullnameTextEditingController.text,
                  usernameTextEditingController.text,
                  bioTextEditingController.text),
            )
          ],
        ),
        body: HookBuilder(builder: (context) {
          final state = useBlocState(() => editProfileBloc);
          useBlocSideEffects(
              () => editProfileBloc,
              (sideEffect) => sideEffect.when(
                  openInitPage: () => Navigator.of(context).pushReplacement(
                      InitPage.route(mode: InitPageMode.PROGRESS_INDICTATOR)),
                  updatedProfile: () => Navigator.of(context).pop()));

          if (state.user != null) {
            usernameTextEditingController.text = state.user.username ?? '';
            bioTextEditingController.text = state.user.bio ?? '';
            fullnameTextEditingController.text = state.user.fullname ?? '';
          } else {
            usernameTextEditingController.text = '';
            bioTextEditingController.text = '';
            fullnameTextEditingController.text = '';
          }
          if (state.progressBarVisible) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Column(children: <Widget>[
                  InkWell(
                    onTap: () => _pickImage(context),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 64.0,
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImageWithFallback(
                            state.user.avatar.url,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text('Change your profile photo'),
                      ],
                    ),
                  ),
                  TextFormField(
                    controller: fullnameTextEditingController,
                    decoration: InputDecoration(labelText: 'Full name'),
                  ),
                  TextFormField(
                    controller: usernameTextEditingController,
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextFormField(
                    controller: bioTextEditingController,
                    decoration: InputDecoration(labelText: 'Bio'),
                  ),
                ]));
          }
        }));
  }

  void _pickImage(BuildContext context) {
    Navigator.of(context).push(PickImagePage.route(
        ratio: 1.0,
        circleShaped: true,
        onImagePicked: (imagePath) {
          editProfileBloc.updateProfileData(avatarPath: imagePath);
          Navigator.of(context).pop();
        }));
  }

  void _updateProfile(
      BuildContext context, String fullname, String username, String bio) {
    final user = editProfileBloc.state.user;
    if (user == null) {
      return;
    }
    username = (username == user.username) ? null : username;
    fullname = (fullname == user.fullname) ? null : fullname;
    bio = (bio == user.bio) ? null : bio;
    editProfileBloc.updateProfileData(
        username: username, bio: bio, fullname: fullname);
  }
}
