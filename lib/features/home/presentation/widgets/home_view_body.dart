import 'package:facebook_test/features/home/presentation/widgets/section_one.dart';
import 'package:facebook_test/features/home/presentation/widgets/section_three.dart';
import 'package:facebook_test/features/home/presentation/widgets/section_two.dart';
import 'package:flutter/material.dart';
import 'package:facebook_test/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionOne(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
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
            const SectionTwo(),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xffe5eef5),
              thickness: 8.5,
            ),
            const ListTile(
              title: Row(
                children: [
                  Text(
                    'Featured',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.info_outline,
                    size: 21,
                  ),
                ],
              ),
              trailing: Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 27,
              ),
            ),
            const Divider(
              thickness: 7,
              color: Color(0xffe7ebed),
            ),
            const SectionThree(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber[800],
                    child: const Icon(
                      Icons.person_off_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Anonymous participant',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      Row(
                        children: [
                          const Text('8h'),
                          const Text('.'),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.earthAmericas,
                            color: Colors.grey[600],
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
