import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isChoosen, required this.color});

  final bool isChoosen;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: color,
      child: isChoosen ? const Icon(Icons.check) : const Text(''),
    );
  }
}

class ListViewColors extends StatefulWidget {
  const ListViewColors({super.key});

  @override
  State<ListViewColors> createState() => _ListViewColorsState();
}

class _ListViewColorsState extends State<ListViewColors> {
  int currentIndex = 0;
  List<Color> colors = const [
     Color(0xffADEEE3),
     Color(0xff86DEB7),
     Color(0xff63B995),
     Color(0xff50723C),
     Color(0xff423E28),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isChoosen: currentIndex == index,
              ),
            );
          }),
    );
  }
}
