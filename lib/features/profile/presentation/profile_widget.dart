import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart'
    as model;
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/presentation/profile_info_widget.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
                onSelectAvatar: () => {
                  print('onSelectAvatar')
                },
                onEditProfile: () => {
                  print('onEditProfile')

                },
              )),
          Expanded(child: Center(child: Text('Profile'))),
        ],
      ),
    );
  }
}
