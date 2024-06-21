// import 'package:flutter/material.dart';
// import 'package:photoplay/screens/main_screen.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//
//
//
//   // List of screens with required data passed
//   List<Widget> _widgetOptions() {
//     return <Widget>[
//       const MainScreen(),
//       // SearchScreen(),
//       // DownloadScreen(),
//       // ProfileScreen(),
//     ];
//   }
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black54,
//       body: _widgetOptions().elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black54,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'HOME',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'SEARCH',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.download),
//             label: 'DOWNLOADS',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         unselectedItemColor: Colors.cyan,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }