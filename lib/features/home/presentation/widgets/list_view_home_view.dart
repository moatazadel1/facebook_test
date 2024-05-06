import 'package:facebook_test/core/section_data.dart';
import 'package:facebook_test/features/home/presentation/widgets/custom_sub_button_action.dart';
import 'package:flutter/material.dart';

class ListViewHomeView extends StatelessWidget {
  const ListViewHomeView({
    super.key,
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
            child: CustomSubButtonAction(
              title: title,
              showCircleAvatar: isYouTitle,
            ),
          );
        },
      ),
    );
  }
}
