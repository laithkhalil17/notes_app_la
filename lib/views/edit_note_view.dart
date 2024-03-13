import 'package:flutter/material.dart';
import 'package:notes_app_la/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditNoteViewBody(),);
  }
}