import 'package:facebook_test/core/section_data.dart';
import 'package:facebook_test/features/home/presentation/widgets/third_custom_button_action.dart';
import 'package:flutter/material.dart';

class SecondListViewHomeView extends StatelessWidget {
  final Color? color;
  const SecondListViewHomeView({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: titles2.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final title = titles2[index];
          final icon = icons2[index];
          final iconColor = iconColors[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ThirdCustomButtonAction(
              iconColor: iconColor,
              icon: icon,
              title: title,
              color: color,
            ),
          );
        },
      ),
    );
  }
}
