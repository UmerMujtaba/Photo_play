import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30,0,30,0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(image: AssetImage('assets/logo1.png'),height: 100,),
                const Text(
                  'PHOTOPLAY',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 26,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Enter the email address you used to create your account and we will email you a link to reset your password',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 45,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[900],
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter Email',
                    ),
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 44.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Colors.orange, Colors.orangeAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                       padding: const EdgeInsets.fromLTRB(108, 10, 108, 10),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: const Text(
                      'Send Email',
                      style: TextStyle(color: Colors.black, fontSize: 14),
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
