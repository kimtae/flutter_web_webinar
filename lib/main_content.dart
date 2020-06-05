import 'package:flutter/material.dart';
import 'package:flutter_webinar/contact_me/contact_me_page.dart';
import 'package:flutter_webinar/designs/my_designs.dart';
import 'package:flutter_webinar/introduction/introduction_info.dart';
import 'package:flutter_webinar/skills/my_skills.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IntroductionInfo(),
          MyDesigns(),
          MySkills(),
          ContactMePage()
        ],
      ),
    );
  }
}
