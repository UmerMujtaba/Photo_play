import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            color: isDarkMode ? Colors.white : Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Profile',
            style: TextStyle(
                color: isDarkMode ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 110, // Adjust the width
                  height: 110, // Adjust the height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: isDarkMode ? Colors.yellow : Colors.orange,
                        width: 4), // Yellow border
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    child: ClipOval(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child:
                            Image.asset('assets/user1.jpg', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Tasun Prsaad',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Premium',
                  style: TextStyle(
                      color: isDarkMode ? Colors.yellow : Colors.orange,
                      fontSize: 20),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: double.maxFinite,
                            child: ListView(
                              children: ListTile.divideTiles(
                                  context: context,
                                  tiles: [
                                    ListTile(
                                      leading: Icon(
                                        Icons.person_outline,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                      title: Text(
                                        'Connected Account',
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_right_sharp,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.notifications_none,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                      title: Text(
                                        'Privacy and Security',
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_right_sharp,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.wallet_outlined,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                      title: Text(
                                        'Login Settings',
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_right_sharp,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.key_outlined,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                      title: Text(
                                        'Service Center',
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_right_sharp,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.logout,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                      title: Text(
                                        'Logout',
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_right_sharp,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        size: 22,
                                      ),
                                    ),
                                  ]).toList(),
                            ),
                          ),
                          //SizedBox(height: 60),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
