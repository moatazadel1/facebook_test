import 'package:facebook_test/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          AppAssets.homeImg,
          height: 200,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: 40,
          color: Colors.blue,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Group by Egyptian Google Flutter Community',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
