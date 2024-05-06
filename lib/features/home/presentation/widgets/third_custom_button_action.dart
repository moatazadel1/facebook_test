import 'package:flutter/material.dart';

class ThirdCustomButtonAction extends StatelessWidget {
  final String title;
  final Color? color;
  final IconData? icon;
  final Color? iconColor;
  const ThirdCustomButtonAction({
    super.key,
    required this.title,
    required this.color,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      height: 45,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
