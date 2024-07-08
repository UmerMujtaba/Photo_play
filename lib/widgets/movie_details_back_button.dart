import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      margin: const EdgeInsets.only(
        top: 16,
        left: 16,
      ),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8)),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_sharp),
      ),
    );
  }
}
