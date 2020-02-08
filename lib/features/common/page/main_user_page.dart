import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/presentation/add_content/add_content_widget.dart';
import 'package:instagram_clone/features/content/presentation/favs/favs_widget.dart';
import 'package:instagram_clone/features/content/presentation/main_contents/main_contents_widget.dart';
import 'package:instagram_clone/features/content/presentation/search/search_for_content_widget.dart';
import 'package:instagram_clone/features/profile/presentation/profile_widget.dart';

class MainUserPage extends StatefulWidget {
  @override
  _MainUserPageState createState() => _MainUserPageState();
}

class _MainUserPageState extends State<MainUserPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: getCurrentBody(),
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
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black12,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget getCurrentBody() {
    if (_selectedIndex == 0) {
      return MainContentsWidget();
    } else if (_selectedIndex == 1) {
      return SearchForContentWidget();
    } else if (_selectedIndex == 2) {
      return AddContentWidget();
    } else if (_selectedIndex == 3) {
      return FavsWidget();
    } else if (_selectedIndex == 4) {
      return ProfileWidget();
    } else {
      throw Exception('Illegal state! There is not $_selectedIndex page!');
    }
  }
}
