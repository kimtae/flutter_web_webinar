import 'package:flutter/material.dart';

class MySkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "My Skills",
            style: TextStyle(
              fontSize: 64,
            ),
          ),
          SizedBox(
            height: 48,
          ),
          ListTile(
            leading: Image.asset("assets/html5.png"),
            title: Text(
              "HTML",
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text("3 years of experience / 18 projects"),
          ),
          SizedBox(
            height: 24,
          ),
          ListTile(
            leading: Image.asset("assets/js.png"),
            title: Text(
              "JS",
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text("3 years of experience / 18 projects"),
          ),
          SizedBox(
            height: 24,
          ),
          ListTile(
            leading: Image.asset("assets/react.png"),
            title: Text(
              "React",
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text("3 years of experience / 18 projects"),
          ),
          SizedBox(
            height: 24,
          ),
          ListTile(
            leading: Image.asset("assets/flutter.png"),
            title: Text(
              "Flutter",
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text("3 years of experience / 18 projects"),
          )
        ],
      ),
    );
  }
}
