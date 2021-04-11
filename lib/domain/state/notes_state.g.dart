// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotesState on NotesStateBase, Store {
  final _$notesAtom = Atom(name: 'NotesStateBase.notes');

  @override
  ObservableList<Note> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(ObservableList<Note> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  final _$listIsLoadingAtom = Atom(name: 'NotesStateBase.listIsLoading');

  @override
  bool get listIsLoading {
    _$listIsLoadingAtom.reportRead();
    return super.listIsLoading;
  }

  @override
  set listIsLoading(bool value) {
    _$listIsLoadingAtom.reportWrite(value, super.listIsLoading, () {
      super.listIsLoading = value;
    });
  }

  final _$receiveAsyncAction = AsyncAction('NotesStateBase.receive');

  @override
  Future<void> receive() {
    return _$receiveAsyncAction.run(() => super.receive());
  }

  final _$createAsyncAction = AsyncAction('NotesStateBase.create');

  @override
  Future<bool> create({String title, String body, bool done}) {
    return _$createAsyncAction
        .run(() => super.create(title: title, body: body, done: done));
  }

  final _$deleteAsyncAction = AsyncAction('NotesStateBase.delete');

  @override
  Future<void> delete({int id}) {
    return _$deleteAsyncAction.run(() => super.delete(id: id));
  }

  @override
  String toString() {
    return '''
notes: ${notes},
listIsLoading: ${listIsLoading}
    ''';
  }
}
