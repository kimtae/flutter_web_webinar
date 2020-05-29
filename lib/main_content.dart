import 'package:flutter/material.dart';
import 'package:flutter_webinar/designs/my_designs.dart';
import 'package:flutter_webinar/introduction/introduction_info.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IntroductionInfo(),
          MyDesigns(),
        ],
      ),
    );
  }
}
