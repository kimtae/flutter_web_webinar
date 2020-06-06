import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MySkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: _buildMobileDesign,
      desktop: _buildDesktopDesign,
    );
  }

  Widget _buildMobileDesign(context){
    return Column(
      children: _buildItems(context),
    );
  }

  Widget _buildDesktopDesign(context){
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildItems(context),
        ),
      ),
    );
  }

  List<Widget> _buildItems(context){
    return [
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
    ];
  }
}
