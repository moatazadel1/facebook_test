import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        size: 30,
        Icons.arrow_back_outlined,
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
      actions: const [
        Icon(
          size: 30,
          Icons.search,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          size: 30,
          Icons.redo_rounded,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          size: 30,
          Icons.menu,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
