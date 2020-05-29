import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF2F2F2),
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 131,
            ),
            Text(
              "Main",
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              "About me",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              "My Works",
              style: TextStyle(
                  color: Color(0xff000000).withOpacity(0.6), fontSize: 18),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              "My Skills",
              style: TextStyle(
                  color: Color(0xff000000).withOpacity(0.6), fontSize: 18),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              "My Clients",
              style: TextStyle(
                  color: Color(0xff000000).withOpacity(0.6), fontSize: 18),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              "Send me a message",
              style: TextStyle(
                  color: Color(0xff000000).withOpacity(0.6), fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
