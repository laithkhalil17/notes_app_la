import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_la/constants.dart';
import 'package:notes_app_la/models/note_model.dart';
import 'package:notes_app_la/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  
 await Hive.openBox(kNotesBox);
 //هي لنخلي هايف تتعامل نع ال note model
 Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily:'Poppins' ),
      home: const NotesView(),
    );
  }
}
