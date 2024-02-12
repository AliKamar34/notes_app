import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.08),
          offset: Offset.zero,
          blurRadius: 0.5,
          blurStyle: BlurStyle.inner,
        )
      ]),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 25,
        ),
      ),
    );
  }
}
