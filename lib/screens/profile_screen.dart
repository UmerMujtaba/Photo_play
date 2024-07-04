import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
                        color: Colors.yellow, width: 4), // Yellow border
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
                const Text(
                  'Tasun Prsaad',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Premium',
                  style: TextStyle(color: Colors.yellow, fontSize: 20),
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
                              children:
                              ListTile.divideTiles(context: context, tiles: [
                                const ListTile(
                                  leading: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                  title: Text('Connected Account',style: TextStyle(color: Colors.white),),
                                  trailing: Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                                const ListTile(
                                  leading: Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                  title: Text('Privacy and Security',style: TextStyle(color: Colors.white),),
                                  trailing: Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                                const ListTile(
                                  leading: Icon(
                                    Icons.wallet_outlined,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                  title: Text('Login Settings',style: TextStyle(color: Colors.white),),
                                  trailing: Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                                const ListTile(
                                  leading: Icon(
                                    Icons.key_outlined,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                  title: Text('Service Center',style: TextStyle(color: Colors.white),),
                                  trailing: Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                                const ListTile(
                                  leading: Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                  title: Text('Logout',style: TextStyle(color: Colors.white),),
                                  trailing: Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
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
