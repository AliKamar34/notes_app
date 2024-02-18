part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLodaing extends NotesState {}

final class NotesSucces extends NotesState {
  final List<NoteModle> notes;

  NotesSucces(this.notes);
}

final class NotesFalier extends NotesState {
  final String errorMessage;

  NotesFalier(this.errorMessage);
}
