import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomAppBar(
            title: 'Edit Notes',
            icon: Icon(
              Icons.check,
              size: 24,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(label: 'Title'),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            label: 'Content',
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
