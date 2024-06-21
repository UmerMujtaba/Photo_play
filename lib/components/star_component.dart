import 'package:flutter/material.dart';

class StarComponent extends StatefulWidget {
  const StarComponent({Key? key}) : super(key: key);

  @override
  State<StarComponent> createState() => _StarComponentState();
}

class _StarComponentState extends State<StarComponent> {
  @override
  Widget build(BuildContext context) {
    var _myColorOne = Colors.grey;
    var _myColorTwo = Colors.grey;
    var _myColorThree = Colors.grey;
    var _myColorFour = Colors.grey;
    var _myColorFive = Colors.grey;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.star),
          onPressed: () => setState(() {
            _myColorOne = Colors.orange;
            _myColorTwo = Colors.grey;
            _myColorThree = Colors.grey;
            _myColorFour = Colors.grey;
            _myColorFive = Colors.grey;
          }),
          color: _myColorOne,
        ),
        IconButton(
          icon: const Icon(Icons.star),
          onPressed: () => setState(() {
            _myColorOne = Colors.orange;
            _myColorTwo = Colors.orange;
            _myColorThree = Colors.grey;
            _myColorFour = Colors.grey;
            _myColorFive = Colors.grey;
          }),
          color: _myColorTwo,
        ),
        IconButton(
          icon: const Icon(Icons.star),
          onPressed: () => setState(() {
            _myColorOne = Colors.orange;
            _myColorTwo = Colors.orange;
            _myColorThree = Colors.orange;
            _myColorFour = Colors.grey;
            _myColorFive = Colors.grey;
          }),
          color: _myColorThree,
        ),
        IconButton(
          icon: const Icon(Icons.star),
          onPressed: () => setState(() {
            _myColorOne = Colors.orange;
            _myColorTwo = Colors.orange;
            _myColorThree = Colors.orange;
            _myColorFour = Colors.orange;
            _myColorFive = Colors.grey;
          }),
          color: _myColorFour,
        ),
        IconButton(
          icon: const Icon(Icons.star),
          onPressed: () => setState(() {
            _myColorOne = Colors.orange;
            _myColorTwo = Colors.orange;
            _myColorThree = Colors.orange;
            _myColorFour = Colors.orange;
            _myColorFive = Colors.orange;
          }),
          color: _myColorFive,
        ),
      ],
    );
  }
}
