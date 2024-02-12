import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            context: context,
            builder: (context) {
              return const AddNoteButtonSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
