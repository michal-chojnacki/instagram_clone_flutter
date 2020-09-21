import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/core/exts_string.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/presentation/user_list/user_list_bloc.dart';
import 'package:instagram_clone/features/profile/presentation/user_list/user_list_state.dart';
import 'package:instagram_clone/features/profile/presentation/user_list/user_list_widget.dart';

class UserListPage extends StatefulWidget {
  final UserListPageMode mode;
  final User user;

  UserListPage(this.mode, this.user);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserListPage> {
  final _userListBloc = GetIt.I<UserListBloc>();

  @override
  void initState() {
    _getNextPage(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "${_followersOrFolloweesText().capitalize()} of ${widget.user.username}"),
        ),
        body: BlocBuilder(
            cubit: _userListBloc,
            builder: (context, UserListState state) {
              if (state.users.isEmpty && state.hasReachedEndOfResults) {
                return Center(
                  child: Text(
                      "${widget.user.username} has no ${_followersOrFolloweesText()}"),
                );
              } else {
                return UserListWidget(
                  users: state.users.toList(),
                  loading: state.users.isEmpty && !state.hasReachedEndOfResults,
                  page: state.page,
                  hasReachedEndOfResults: state.hasReachedEndOfResults,
                  getNextPage: _getNextPage,
                );
              }
            }));
  }

  @override
  void dispose() {
    super.dispose();
    _userListBloc.close();
  }

  void _getNextPage(int page) {
    if (widget.mode == UserListPageMode.FOLLOWERS) {
      _userListBloc.loadFollowers(userId: widget.user.id, page: page);
    } else if (widget.mode == UserListPageMode.FOLLOWEES) {
      _userListBloc.loadFollowees(userId: widget.user.id, page: page);
    }
  }

  String _followersOrFolloweesText() {
    if (widget.mode == UserListPageMode.FOLLOWERS) {
      return "followers";
    } else if (widget.mode == UserListPageMode.FOLLOWEES) {
      return "followees";
    }
    return "";
  }
}

enum UserListPageMode { FOLLOWERS, FOLLOWEES }
