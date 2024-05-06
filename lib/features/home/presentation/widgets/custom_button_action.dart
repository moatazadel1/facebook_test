import 'package:flutter/material.dart';

class CustomButtonAction extends StatelessWidget {
  final Color? buttonColor;
  final IconData iconOne;
  final IconData? iconTwo;
  final Color? textColor;
  final Color? iconOneColor;

  final String text;
  const CustomButtonAction({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.iconOne,
    this.iconTwo,
    this.textColor,
    this.iconOneColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: buttonColor,
      ),
      height: 42,
      width: MediaQuery.of(context).size.width * 0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconOne,
            color: iconOneColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: textColor),
          ),
          const SizedBox(
            width: 5,
          ),
          iconTwo != null
              ? Icon(
                  iconTwo,
                  size: 28,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
