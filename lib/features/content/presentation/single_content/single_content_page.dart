import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/presentation/common/content_item.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/profile/domain/change_like_use_case.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class SingleContentPage extends StatelessWidget {
  final PersonalizedContent content;
  final _changeLike = GetIt.I<ChangeLikeUseCase>();
  final _navigationBloc = GetIt.I<NavigationBloc>();

  SingleContentPage({@required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: SingleChildScrollView(
        child: ContentItem(
            personalizedContent: content,
            showUser: (user) {
              _navigationBloc.openUserProfilePage(user: user);
            },
          changeLikeStatus: (status) async {
            return (await (_changeLike(content.content.id, !status))).when(
                success: (_) => !status, error: (_) => status);
          },),
      ),
    );
  }
}
