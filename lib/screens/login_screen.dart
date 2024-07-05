
import 'package:flutter/material.dart';
import 'package:photoplay/screens/main_screen.dart';
import 'package:provider/provider.dart';

import '../components/button_component.dart';
import '../provider/theme_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? Colors.black54 : Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: isDarkMode? [
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.9),

                      ]:[
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(1),
                      ],
                    ).createShader(bounds),
                    blendMode: BlendMode.srcATop,
                    child: const SizedBox(
                      height: 400,
                      child: Image(
                        image: AssetImage('assets/poster1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
                            child: Text(
                              'EMAIL',
                              style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: isDarkMode
                                  ? Colors.white54
                                  : Colors.grey.shade600,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: '',
                              hintText: 'Phone number, email or user name'),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
                    child: Text(
                      'PASSWORD',
                      style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:
                        isDarkMode ? Colors.white54 : Colors.grey.shade600,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Password',
                  ),
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: 'LOGIN',
                height: 44.0,
                padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 80.0,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    'Social Logins',
                    style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 80.0,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.yellowAccent,
                    ),
                    child:  Icon(
                      Icons.facebook_sharp,
                      size: 40,
                      color: isDarkMode ? Colors.black : Colors.black,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.yellowAccent,
                    ),
                    child:  Icon(
                      Icons.g_mobiledata,
                      size: 40,
                      color: isDarkMode ? Colors.black : Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgot');
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                'REGISTER',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
