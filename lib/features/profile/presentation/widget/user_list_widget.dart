import 'package:flutter/material.dart';

import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/widget/recommended_profile_item.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_page.dart';

class UserListWidget extends StatefulWidget {
  final List<User> users;
  final bool loading;
  final int page;
  final bool hasReachedEndOfResults;
  final Function getNextPage;

  UserListWidget(
      {@required this.users,
      this.loading,
      this.page,
      this.hasReachedEndOfResults,
      this.getNextPage});

  @override
  _UserListWidgetState createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: ListView.builder(
          itemCount: _calculateListItemCount(),
          controller: _scrollController,
          itemBuilder: (context, index) {
            return index >= widget.users.length
                ? _buildLoaderListItem()
                : RecommendedProfileItem(
                    user: widget.users[index],
                    onOpenProfileClick: (user) =>
                        Navigator.of(context).push(UserProfilePage.route(user)),
                  );
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0 &&
        !widget.hasReachedEndOfResults) {
      widget.getNextPage(page: widget.page + 1);
    }

    return false;
  }

  int _calculateListItemCount() {
    if (widget.hasReachedEndOfResults) {
      return widget.users.length;
    } else {
      // + 1 for the loading indicator
      return widget.users.length + 1;
    }
  }

  Widget _buildLoaderListItem() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
