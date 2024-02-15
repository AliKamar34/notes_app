import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.label, this.keypordType, this.maxLines = 1});
  final String label;
  final int maxLines;

  final TextInputType? keypordType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      keyboardType: keypordType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
