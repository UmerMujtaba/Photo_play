import 'package:flutter/material.dart';

class StarComponent extends StatefulWidget {
  const StarComponent({Key? key}) : super(key: key);

  @override
  State<StarComponent> createState() => _StarComponentState();
}

class _StarComponentState extends State<StarComponent> {
  int _selectedStars = 0;

  void _handleStarTap(int index) {
    setState(() {
      _selectedStars = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          icon: const Icon(Icons.star),
          onPressed: () => _handleStarTap(index + 1),
          color: index < _selectedStars ? Colors.orange : Colors.grey,
        );
      }),
    );
  }
}
