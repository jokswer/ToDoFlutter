import 'package:flutter/material.dart';
import 'package:ToDoFlutter/presentation/components/button.dart';
import 'package:ToDoFlutter/presentation/components/input.dart';
import 'package:ToDoFlutter/domain/state/notes_state.dart';
import 'package:provider/provider.dart';

class NoteScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NoteState();
  }
}

class _NoteState extends State<NoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  void _create(BuildContext context) {
    final NotesState notesState = Provider.of<NotesState>(context, listen: false);

    final String title = _titleController.text;
    final String body = _bodyController.text;
    const bool done = false;

    notesState.create(title: title, body: body, done: done).then((bool result) {
      if (result) Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final NotesState notesState = Provider.of<NotesState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Создать'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
              child: Input(
                controller: _titleController,
                labelText: 'Заголовок',
                keyboardType: TextInputType.multiline,
                obscureText: false,
                maxLines: null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 50, right: 50),
              child: Input(
                controller: _bodyController,
                labelText: 'Заметка',
                keyboardType: TextInputType.multiline,
                obscureText: false,
                maxLines: null,
              ),
            ),
            Button(
              onPressed: () {
                _create(context);
              },
              title: 'Создать',
            ),
          ],
        ),
      ),
    );
  }
}
