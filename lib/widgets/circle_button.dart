import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(Icons.search),
        iconSize: 30.0,
        color: Colors.black,
        onPressed: () {},
      ),
    );
  }
}
