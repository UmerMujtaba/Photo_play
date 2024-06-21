import 'package:flutter/material.dart';
import 'package:photoplay/screens/download_screen.dart';
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
      Navigator.restorablePushReplacementNamed(context, '/search');
    }
    if (index == 2) {
      Navigator.restorablePushReplacementNamed(context, '/download');
    }
    if (index == 3) {
      Navigator.restorablePushReplacementNamed(context, '/profile');
    }
    setState(() {
      _selectedTabIndex = index;
    });
  }

  int currentTab = 0;
  final List<Widget> screens = [
    const MainScreen(),
    const SearchScreen(),
    const DownloadScreen(),
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
              icon: Icon(Icons.download),
              label: 'Downloads',
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
