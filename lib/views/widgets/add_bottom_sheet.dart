import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_botton.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(label: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: 'Content',
              maxLines: 4,
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(title: 'Add'),
          ],
        ),
      ),
    );
  }
}
