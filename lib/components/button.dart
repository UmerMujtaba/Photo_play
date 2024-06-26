import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text; //to be changed depending on use
  final double height; //to be changed depending on use
  final EdgeInsets padding; //to be changed depending on use
  final VoidCallback onPressed; //to be changed depending on use

  const CustomButton({
    Key? key,
    required this.text,
    this.height = 44.0, //const provided, if nt given in any screen it will be called there
    this.padding = const EdgeInsets.fromLTRB(50, 10, 50, 10),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 14, letterSpacing: 2),
        ),
      ),
    );
  }
}
