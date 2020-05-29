import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 19),
      color: Color(0xffA8D580),
      child: Text(
        "Hire Me",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: Color(0xff598235)),
      ),
    );
  }
}
