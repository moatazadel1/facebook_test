import 'package:facebook_test/features/home/presentation/widgets/first_custom_button_action.dart';
import 'package:facebook_test/features/home/presentation/widgets/first_list_view_home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.earthAmericas,
                color: Colors.grey[600],
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Public Group',
                style: TextStyle(color: Colors.grey[800], fontSize: 15),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text('.'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '75K',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'members',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              FirstCustomButtonAction(
                buttonColor: Color(0xffe5e4e9),
                text: 'Joined',
                iconOne: Icons.groups_2_rounded,
                iconTwo: Icons.arrow_drop_down_outlined,
              ),
              SizedBox(
                width: 10,
              ),
              FirstCustomButtonAction(
                buttonColor: Colors.blue,
                text: 'Invite',
                textColor: Colors.white,
                iconOneColor: Colors.white,
                iconOne: Icons.person_add_alt_1,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const FirstListViewHomeView(
            color: Color(0xffe5e4e9),
          ),
        ],
      ),
    );
  }
}
