import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal,
        width: 100,
        height: 100,
        child: const Center(
          child: Text(
            'ToDo',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ));
  }
}
