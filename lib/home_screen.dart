import 'package:flutter/material.dart';
import 'package:flutter_webinar/main_content.dart';
import 'package:flutter_webinar/menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[Menu(), Expanded(child: MainContent())],
        ),
      ),
    );
  }
}
