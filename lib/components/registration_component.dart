import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class RegisterOption extends StatelessWidget {
  const RegisterOption({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(context);
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Column(
      children: <Widget>[
        const SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'First Name',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
          width: width * 0.8,
          height: height * 0.06,
          child: TextField(
            //obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: isDarkMode ? Colors.white : Colors.grey.shade400,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter First Name',
            ),
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'Last Name',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
           width: width * 0.8,
          height: height * 0.06,
          child: TextField(
            //obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: isDarkMode ? Colors.white : Colors.grey.shade400,
              border: OutlineInputBorder(
                //
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter Last Name',
            ),
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'Email',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
           width: width * 0.8,
          height: height * 0.06,
          child: TextField(
            // obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: isDarkMode ? Colors.white : Colors.grey.shade400,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter Email',
            ),
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'Password',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
           width: width * 0.8,
          height: height * 0.06,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: isDarkMode ? Colors.white : Colors.grey.shade400,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Enter Password',
            ),
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text(
                'Confirm Password',
                style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
           width: width * 0.8,
          height: height * 0.06,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: isDarkMode ? Colors.white : Colors.grey.shade400,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Re-Enter Password',
            ),
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
