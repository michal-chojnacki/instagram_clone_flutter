import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/presentation/common/content_item.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class SingleContentPage extends StatelessWidget {
  final Content content;
  final _navigationBloc = GetIt.I<NavigationBloc>();

  SingleContentPage({@required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: ContentItem(content, (user) {
        _navigationBloc.openUserProfilePage(user: user);
      }),
    );
  }
}