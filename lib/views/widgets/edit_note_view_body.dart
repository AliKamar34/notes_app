import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icon(
              Icons.check,
              size: 24,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(label: 'Title'),
          SizedBox(
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
