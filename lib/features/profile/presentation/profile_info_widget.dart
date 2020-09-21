import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class ProfileInfoWidget extends StatelessWidget {
  ProfileInfoWidget({this.onSelectAvatar, @required this.user});

  final NavigationBloc _navigtationBloc = GetIt.I<NavigationBloc>();
  final Function onSelectAvatar;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            InkWell(
              onTap: onSelectAvatar,
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
                  if (onSelectAvatar != null)
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
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )),
                ],
              ),
            ),
            SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _createStatsColumn(count: user.posts, name: 'Posts'),
                  _createStatsColumn(
                      count: user.followers,
                      name: 'Followers',
                      onTap: () =>
                          _navigtationBloc.openUserFollowersPage(user: user)),
                  _createStatsColumn(
                      count: user.followees,
                      name: 'Followees',
                      onTap: () =>
                          _navigtationBloc.openUserFolloweesPage(user: user)),
                ],
              ),
            ),
          ],
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              (user.fullname != null && user.fullname.isNotEmpty)
                  ? user.fullname
                  : user.username,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            )),
        if (user.bio != null && user.bio.isNotEmpty)
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                user.bio,
                style: TextStyle(fontSize: 14.0),
              )),
      ],
    );
  }

  Widget _createStatsColumn(
      {@required int count, @required String name, Function onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(children: <Widget>[
          Text(count.toString(), style: TextStyle(fontSize: 24.0)),
          Text(name),
        ]),
      ),
    );
  }
}
