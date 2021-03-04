import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 50,
      height: 50,
      child: Text(
        'ToDo',
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
