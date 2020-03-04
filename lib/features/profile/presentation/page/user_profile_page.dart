import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_state.dart';
import 'package:instagram_clone/features/profile/presentation/profile_info_widget.dart';

class UserProfilePage extends StatefulWidget {
  final User _user;

  UserProfilePage(this._user);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final _userProfileBloc = GetIt.I<UserProfileBloc>();

  @override
  void dispose() {
    _userProfileBloc.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _userProfileBloc.fetchProfileData(user: widget._user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._user.username),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileInfoWidget(
              user: widget._user,
            ),
            BlocBuilder(
              bloc: _userProfileBloc,
              builder: (context, UserProfileState state) {
                  return RaisedButton(
                    color: state.observing ? Colors.white : Colors.blue,
                    child: state.observing
                        ? Text(
                      'Observing',
                      style: TextStyle(color: Colors.black),
                    )
                        : Text(
                      'Observe',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      _userProfileBloc.changeObservation(user: widget._user, observe: !state.observing);
                    },
                  );
                },
            ),
            BlocBuilder(
                bloc: _userProfileBloc,
                builder: (context, UserProfileState state) {
                  if (state.progressBarVisible) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return GridView.builder(
                      shrinkWrap: true,
                        itemCount: state.contents.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Image.network(state.contents[index].image.url);
                        });
                  }
                }),
          ],
        ),
      ),
    );
  }
}
