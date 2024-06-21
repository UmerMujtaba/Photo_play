import 'package:flutter/material.dart';

import '../components/registration.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 20,
            color: Colors.white,
          ),
          title: const Text(
            'Back',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.grey[800],
                maxRadius: 60,
                child: const Icon(
                  Icons.person_rounded,
                  size: 90,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Add profile picture',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const RegisterOption(),
          ],
        ),
      ),
    );
  }
}
