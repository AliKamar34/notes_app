import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          CustomTextField(label: 'Title'),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            label: 'Content',
            maxLines: 4,
          )
        ],
      ),
    );
  }
}
