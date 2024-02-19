import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
 const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        CustomIconBotton(onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
