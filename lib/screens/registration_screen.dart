import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/button_component.dart';
import '../components/registration_component.dart';
import '../provider/theme_provider.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);


    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: isDarkMode ? Colors.black : Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 20,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
          title: Text(
            'Back',
            style: TextStyle(
                color: isDarkMode ? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              Center(
                child: CircleAvatar(
                  backgroundColor:
                      isDarkMode ? Colors.white : Colors.grey.shade400,
                  maxRadius: 60,
                  child: const Icon(
                    Icons.person_rounded,
                    size: 90,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Add profile picture',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const RegisterOption(),
              CustomButton(
                text: 'REGISTER',
                height: 44.0,
                padding: const EdgeInsets.fromLTRB(115, 10, 115, 10),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
