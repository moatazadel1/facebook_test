import 'package:facebook_test/features/home/presentation/widgets/section_one.dart';
import 'package:flutter/material.dart';
import 'package:facebook_test/features/home/presentation/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionOne(),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  'FlutterEgypt',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Align(
                  heightFactor: 1.5,
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.keyboard_arrow_right_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
