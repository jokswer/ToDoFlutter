import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final double width, height;
  final Function onPressed;

  const Button(
      {Key key,
      this.title,
      this.color = Colors.teal,
      this.width = 150,
      this.height = 50,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onPressed();
        },
        child: Container(
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white),
            ),
          ),
          height: height,
          width: width,
          color: color,
        ));
  }
}
