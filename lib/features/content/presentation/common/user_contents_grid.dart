import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/common/contents_grid.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_bloc.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_state.dart';

class UserContentsGrid extends StatefulWidget {
  final User user;

  UserContentsGrid({@required this.user});

  @override
  _UserContentsGridState createState() => _UserContentsGridState();
}

class _UserContentsGridState extends State<UserContentsGrid> {
  final _userContentsGridBloc = GetIt.I<UserContentsGridBloc>();

  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      _userContentsGridBloc.fetchProfileData(user: widget.user);
    } else {
      _userContentsGridBloc.fetchCurrentUserContent();
    }
  }

  @override
  void dispose() {
    _userContentsGridBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserContentsGridBloc, UserContentsGridState>(
        cubit: _userContentsGridBloc,
        builder: (context, UserContentsGridState state) {
          return ContentsGrid(
            contents: state.contents.toList(),
            loading: state.progressBarVisible,
          );
        });
  }
}
