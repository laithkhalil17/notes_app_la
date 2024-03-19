import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_la/constants.dart';
import 'package:notes_app_la/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app_la/models/note_model.dart';
import 'package:notes_app_la/simple_bloc_observer.dart';
import 'package:notes_app_la/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  //هي لنخلي هايف تتعامل نع ال note model
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubitCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
