import 'package:facebook_test/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomSubButtonAction extends StatelessWidget {
  final String title;
  final bool? showCircleAvatar;
  const CustomSubButtonAction({
    super.key,
    required this.title,
    this.showCircleAvatar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffe5e4e9),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            showCircleAvatar == true
                ? CircleAvatar(
                    radius: 15,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(AppAssets.profilePic),
                    ),
                  )
                : const SizedBox(),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
