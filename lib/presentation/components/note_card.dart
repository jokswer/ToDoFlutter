import 'package:ToDoFlutter/domain/model/note.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final Function() onCardTap;
  final Function() onDeleteTap;

  const NoteCard({Key key, this.note, this.onCardTap, this.onDeleteTap})
      : super(key: key);

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
              Column(children: <Widget>[
                Text(
                  note.title,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  note.body,
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ]),
              TextButton(
                  onPressed: onDeleteTap,
                  child: const Text(
                    'Удалить',
                    style: TextStyle(fontSize: 14, color: Colors.redAccent),
                  ))
            ],
          ),
        ),
      ),
      onTap: onCardTap,
    );
  }
}
