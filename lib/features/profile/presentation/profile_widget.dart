import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart'
    as model;
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/presentation/profile_info_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final _navigationBloc = GetIt.I<NavigationBloc>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(16.0),
              child: ProfileInfoWidget(
                user: User.create(
                    username: "elo",
                    avatar: model.Image.create(
                        url:
                            "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")),
                onSelectAvatar: getImage,
                onEditProfile: () => {
                  _navigationBloc.openEditProfilePage()
                },
              )),
          Expanded(child: Center(child: Text('Profile'))),
        ],
      ),
    );
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    print('onSelectAvatar : $image');
  }
}
