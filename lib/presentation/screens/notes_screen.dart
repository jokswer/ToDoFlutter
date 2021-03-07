import 'package:flutter/material.dart';
import 'package:ToDoFlutter/presentation/components/note_card.dart';

class NotesScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Заметки'), backgroundColor: Colors.teal,),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return NoteCard();
          }),
    );
  }
}
