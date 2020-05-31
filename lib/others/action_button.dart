import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Function() onPressed;


  const ActionButton({Key key, this.title, this.onPressed}) : super(key: key);@override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onPressed,
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 19),
      color: Color(0xffA8D580),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: Color(0xff598235)),
      ),
    );
  }
}
