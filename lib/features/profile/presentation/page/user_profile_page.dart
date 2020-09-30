import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/core/widgets/primary_button.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/widget/user_contents_grid.dart';
import 'package:instagram_clone/features/profile/presentation/user_profile_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/user_profile_state.dart';
import 'package:instagram_clone/features/profile/presentation/widget/profile_info_widget.dart';

class UserProfilePage extends StatefulWidget {
  static Route route(User user) {
    return MaterialPageRoute<void>(builder: (_) => UserProfilePage(user));
  }

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
    _userProfileBloc.fetchObservation(user: widget._user);
    _userProfileBloc.refreshUserData(user: widget._user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._user.username),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: BlocBuilder<UserProfileBloc, UserProfileState>(
          cubit: _userProfileBloc,
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ProfileInfoWidget(
                  user: state.user ?? widget._user,
                  onBackFromUserListPage: () =>
                      _userProfileBloc.refreshUserData(user: widget._user),
                ),
                PrimaryButton(
                  text: state.observing ? 'Observing' : 'Observe',
                  light: state.observing,
                  onPressed: () {
                    _userProfileBloc.changeObservation(
                        user: widget._user, observe: !state.observing);
                  },
                ),
                Expanded(
                  child: UserContentsGrid(
                    user: state.user ?? widget._user,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
