import 'package:flutter/material.dart';

class CustomIconBotton extends StatelessWidget {
  const CustomIconBotton({super.key, required this.icon, this.onPressed});
  final Icon icon;

  final void Function()? onPressed;
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
      child: Center(
        child: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
