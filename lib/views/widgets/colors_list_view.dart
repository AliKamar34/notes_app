import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isChoosen: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
