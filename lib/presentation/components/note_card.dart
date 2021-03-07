import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('title'),
              const Text('text'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Switch(value: true, onChanged: null),
                  Text('Удалить')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  
}