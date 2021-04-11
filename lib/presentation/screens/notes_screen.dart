import 'package:ToDoFlutter/domain/model/note.dart';
import 'package:ToDoFlutter/presentation/screens/note_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ToDoFlutter/routes/paths.dart';
import 'package:ToDoFlutter/domain/state/notes_state.dart';
import 'package:ToDoFlutter/presentation/components/note_card.dart';
import 'package:provider/provider.dart';

class NotesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotesState();
  }
}

class _NotesState extends State<NotesScreen> {
  @override
  void initState() {
    super.initState();

    _receive();
  }

  void _receive() {
    context.read<NotesState>().receive();
  }

  void _navigateToNote(BuildContext context, [Note noteItem]) {
    Navigator.pushNamed(
      context,
      note,
      arguments: NoteScreen(note: noteItem),
    );
  }

  void _delete(int id) {
    context.read<NotesState>().delete(id: id);
  }

  @override
  Widget build(BuildContext context) {
    final NotesState notesState = Provider.of<NotesState>(context);

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
                  _navigateToNote(context);
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
            if (notesState.listIsLoading)
              const Center(
                  child: Text(
                'Загрузка...',
                style: TextStyle(fontSize: 18),
              ));

            if (notesState.notes == null || notesState.notes.isEmpty)
              return const Center(
                  child: Text(
                'Ничего нет!',
                style: TextStyle(fontSize: 18),
              ));

            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: notesState.notes.length,
                itemBuilder: (BuildContext context, int index) {
                  return NoteCard(
                    note: notesState.notes[index],
                    onCardTap: () {
                      _navigateToNote(context, notesState.notes[index]);
                    },
                    onDeleteTap: () {
                      _delete(notesState.notes[index].id);
                    },
                  );
                });
          },
        ));
  }
}
