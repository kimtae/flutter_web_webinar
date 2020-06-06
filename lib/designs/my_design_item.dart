import 'package:flutter/material.dart';
import 'package:flutter_webinar/others/action_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyDesignItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String date;
  final Function() onPressed;

  const MyDesignItem({
    Key key,
    this.title,
    this.description,
    this.imageUrl,
    this.date,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: _buildDesignMobile,
      desktop: _buildDesignDesktop,
    );
  }

  Widget _buildDesignMobile(context){
    return Column(
      children: <Widget>[
        buildImage(context),
        buildInfo(true)
      ],
    );
  }

  Widget _buildDesignDesktop(context){
    return Row(
      children: <Widget>[
        Expanded(child: buildImage(context)), Expanded(child: buildInfo(false)),
      ],
    );
  }

  Widget buildInfo(isMobile) {
    return Padding(
      padding: EdgeInsets.all(isMobile? 8:32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(height: 12,),
          Text(
            description,
            style: TextStyle(fontSize: 20, color: Color(0xff4D4A4A)),
          ),
          SizedBox(height: 24,),
          Text(
            date,
            style: TextStyle(fontSize: 22, color: Colors.black54),
          ),
          SizedBox(height: 32,),

          ActionButton(
            title: "Visit Site",
            onPressed: this.onPressed,
          )
        ],
      ),
    );
  }

  Widget buildImage(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 300,
      fit: BoxFit.cover,
    );
  }
}
