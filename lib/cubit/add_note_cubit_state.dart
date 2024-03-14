part of 'add_note_cubit_cubit.dart';

abstract class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}
class AddNoteLoading extends AddNoteCubitState{}
class AddNoteSuccess extends AddNoteCubitState{}
class AddNoteFailure extends AddNoteCubitState{
  final String errMessage;

  AddNoteFailure( this.errMessage);
}
