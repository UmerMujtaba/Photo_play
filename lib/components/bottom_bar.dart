import 'package:flutter/material.dart';
import 'package:photoplay/screens/favorite_screen.dart';
import 'package:photoplay/screens/main_screen.dart';
import 'package:photoplay/screens/profile_screen.dart';
import 'package:photoplay/screens/search_screen.dart';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  int _selectedTabIndex = 0;

  void _onTabTapped(int index) async {
    if (index == 0) {
      Navigator.pushNamed(context, '/main');
    }
    if (index == 1) {
      Navigator.pushNamed(context, '/search');
    }
    if (index == 2) {
      Navigator.pushNamed(context, '/favorite');
    }
    if (index == 3) {
      Navigator.pushNamed(context, '/profile');
    }
    setState(() {
      _selectedTabIndex = index;
    });
  }

  int currentTab = 0;
  final List<Widget> screens = [
    const MainScreen(),
    const SearchScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[800],
          elevation: 8,
          iconSize: 24,

          selectedItemColor: Colors.blueAccent,
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
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
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedTabIndex,
          onTap: _onTabTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
