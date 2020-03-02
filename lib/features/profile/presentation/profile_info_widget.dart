import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

class ProfileInfoWidget extends StatelessWidget {
  ProfileInfoWidget({this.onSelectAvatar, this.user, this.onEditProfile});

  final Function onSelectAvatar;
  final Function onEditProfile;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            InkWell(
              onTap: () => onSelectAvatar(),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 64.0,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                        user.avatar.url,
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              width: 32.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _createStatsColumn(count: 12, name: 'Posts'),
                  _createStatsColumn(count: 2, name: 'Observers'),
                  _createStatsColumn(count: 12, name: 'Observing'),
                ],
              ),
            ),
          ],
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              user.username,
              style: TextStyle(fontSize: 24.0),
            )),
        ButtonTheme(
          minWidth: double.infinity,
          child: RaisedButton(
            child: Text(
              "Edit profile",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => onEditProfile(),
          ),
        ),
      ],
    );
  }

  Widget _createStatsColumn({@required int count, @required String name}) {
    return Column(children: <Widget>[
      Text(count.toString(), style: TextStyle(fontSize: 24.0)),
      Text(name),
    ]);
  }
}