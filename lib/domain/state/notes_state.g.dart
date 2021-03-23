// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotesState on NotesStateBase, Store {
  final _$notesAtom = Atom(name: 'NotesStateBase.notes');

  @override
  List<Note> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(List<Note> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  final _$receiveAsyncAction = AsyncAction('NotesStateBase.receive');

  @override
  Future<void> receive() {
    return _$receiveAsyncAction.run(() => super.receive());
  }

  @override
  String toString() {
    return '''
notes: ${notes}
    ''';
  }
}
