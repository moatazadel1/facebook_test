import 'package:facebook_test/core/section_data.dart';
import 'package:facebook_test/features/home/presentation/widgets/second_custom_button_action.dart';
import 'package:flutter/material.dart';

class FirstListViewHomeView extends StatelessWidget {
  final Color? color;
  const FirstListViewHomeView({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: titles.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final title = titles[index];
          final isYouTitle = title == 'You';
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SecondCustomButtonAction(
              color: color,
              title: title,
              showCircleAvatar: isYouTitle,
            ),
          );
        },
      ),
    );
  }
}
