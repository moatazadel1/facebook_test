import 'package:facebook_test/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SecondCustomButtonAction extends StatelessWidget {
  final String? title;
  final bool? showCircleAvatar;
  final Color? color;
  const SecondCustomButtonAction({
    super.key,
    this.title,
    this.showCircleAvatar = false,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      height: 45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            showCircleAvatar == true
                ? Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.profilePic),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              width: 5,
            ),
            Text(
              title ?? "",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
