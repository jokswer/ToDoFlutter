import 'package:ToDoFlutter/domain/model/note.dart';
import 'package:flutter/material.dart';
import 'package:ToDoFlutter/presentation/components/button.dart';
import 'package:ToDoFlutter/presentation/components/input.dart';
import 'package:ToDoFlutter/domain/state/notes_state.dart';
import 'package:provider/provider.dart';

class NoteScreen extends StatefulWidget {
  Note note;

  NoteScreen({Key key, this.note}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NoteState();
  }
}

class _NoteState extends State<NoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  void _create(BuildContext context) {
    final NotesState notesState =
        Provider.of<NotesState>(context, listen: false);

    final String title = _titleController.text;
    final String body = _bodyController.text;
    const bool done = false;

    notesState.create(title: title, body: body, done: done).then((bool result) {
      if (result) Navigator.pop(context);
    });
  }

  void _edit(BuildContext context, int id) {
    final NotesState notesState =
        Provider.of<NotesState>(context, listen: false);

    final String title = _titleController.text;
    final String body = _bodyController.text;
    const bool done = false;

    final Note note = Note(body: body, title: title, done: done, id: id);

    notesState.edit(note).then((bool result) {
      if (result) Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final NoteScreen arguments =
        ModalRoute.of(context).settings.arguments as NoteScreen;

    final String buttunText =
        arguments.note == null ? 'Создать' : 'Редактировать';

    return Scaffold(
      appBar: AppBar(
        title: Text(buttunText),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
              child: Input(
                controller: _titleController..text = arguments.note?.title,
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
                controller: _bodyController..text = arguments.note?.body,
                labelText: 'Заметка',
                keyboardType: TextInputType.multiline,
                obscureText: false,
                maxLines: null,
              ),
            ),
            Button(
              onPressed: () {
                arguments.note == null
                    ? _create(context)
                    : _edit(context, arguments.note.id);
              },
              title: buttunText,
            ),
          ],
        ),
      ),
    );
  }
}
