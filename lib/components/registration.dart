import 'package:flutter/material.dart';

class RegisterOption extends StatelessWidget {
  const RegisterOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 20),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'First Name',
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
            //obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[900],
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter First Name',
            ),
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'Last Name',
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
            //obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[900],
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter Last Name',
            ),
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
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
            // obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[900],
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter Email',
            ),
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'Password',
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
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter Password',
            ),
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'Confirm Password',
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
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Re-Enter Password',
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
                padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent),
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}