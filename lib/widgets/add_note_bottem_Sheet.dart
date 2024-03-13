import 'package:flutter/material.dart';
import 'package:notes_app_la/widgets/custom_bottem.dart';
import 'package:notes_app_la/widgets/custom_text_field.dart';

class AddNoteBottemShet extends StatelessWidget {
  const AddNoteBottemShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
