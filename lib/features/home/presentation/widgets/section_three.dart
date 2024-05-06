import 'package:facebook_test/core/utils/app_assets.dart';
import 'package:facebook_test/features/home/presentation/widgets/second_list_view.dart';
import 'package:flutter/material.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppAssets.profilePic),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()),
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Write Something...',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.photo_library,
                color: Colors.green,
              ),
            ),
          ],
        ),
        const Divider(
          endIndent: 15,
          indent: 15,
          thickness: 0.5,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 15,
          ),
          child: SecondListViewHomeView(
            color: Colors.white,
          ),
        ),
        const Divider(
          thickness: 5,
          color: Color(0xffe7ebed),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Most Relevant',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
