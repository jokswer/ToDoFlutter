import 'package:flutter/material.dart';
import 'package:ToDoFlutter/domain/state/notes_state.dart';
import 'package:ToDoFlutter/internal/dependencies/notes_module.dart';
import 'package:ToDoFlutter/presentation/components/note_card.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NotesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotesState();
  }
}

class _NotesState extends State<NotesScreen> {
  NotesState _notesState;

  @override
  void initState() {
    super.initState();
    _notesState = NotesModule.notesState();

    _notesState.receive();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Заметки'),
          leading: GestureDetector(
            onTap: () {
              //TODO:
            },
            child: const Icon(
              Icons.menu, // add custom icons also
            ),
          ),
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  //TODO:
                },
                child: const Icon(
                  Icons.add,
                  size: 26.0,
                ))
          ],
          backgroundColor: Colors.teal,
        ),
        body: Observer(
          builder: (_) {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: _notesState.notes?.length,
                itemBuilder: (BuildContext context, int index) {
                  return NoteCard();
                });
          },
        ));
  }
}
