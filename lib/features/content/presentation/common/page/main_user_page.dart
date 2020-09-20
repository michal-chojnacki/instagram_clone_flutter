import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/presentation/common/page/main_user_bloc.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_widget.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profiles_widget.dart';
import 'package:instagram_clone/features/content/presentation/search/search_for_content_widget.dart';
import 'package:instagram_clone/features/profile/presentation/my_profile_widget.dart';

class MainUserPage extends StatelessWidget {
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
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  title: Text('Add'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text('Favs'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile'),
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
    context.bloc<MainUserBloc>().showPage(index);
  }
}
