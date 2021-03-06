import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:instagram_clone/features/camera/page/pick_image_page.dart';
import 'package:instagram_clone/features/content/presentation/common/main_user_bloc.dart';
import 'package:instagram_clone/features/content/presentation/page/send_content_page.dart';
import 'package:instagram_clone/features/content/presentation/widget/main_contents_widget.dart';
import 'package:instagram_clone/features/content/presentation/widget/recommended_profiles_widget.dart';
import 'package:instagram_clone/features/content/presentation/widget/search_for_content_widget.dart';
import 'package:instagram_clone/features/profile/presentation/widget/my_profile_widget.dart';

class MainUserPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => MainUserPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => GetIt.I<MainUserBloc>(),
        child:
            BlocBuilder<MainUserBloc, int>(builder: (context, selectedIndex) {
          return Scaffold(
            body: getCurrentBody(selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favs',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              unselectedItemColor: Colors.black12,
              selectedItemColor: Theme.of(context).primaryColor,
              currentIndex: selectedIndex,
              onTap: (index) => _onItemTapped(context, index),
            ),
          );
        }));
  }

  Widget getCurrentBody(int selectedIndex) {
    if (selectedIndex == 0) {
      return MainContentsWidget();
    } else if (selectedIndex == 1) {
      return SearchForContentWidget();
    } else if (selectedIndex == 3) {
      return RecommendedProfilesWidget();
    } else if (selectedIndex == 4) {
      return MyProfileWidget();
    } else {
      throw Exception('Illegal state! There is not $selectedIndex page!');
    }
  }

  void _onItemTapped(BuildContext context, int index) {
    if (index == 2) {
      Navigator.of(context).push(PickImagePage.route(
          ratio: 1.0,
          circleShaped: false,
          onImagePicked: (imagePath) => Navigator.of(context)
              .pushReplacement(SendContentPage.route(imagePath))));
    } else {
      context.bloc<MainUserBloc>().showPage(index);
    }
  }
}
