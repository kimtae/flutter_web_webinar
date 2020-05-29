import 'package:flutter/material.dart';
import 'package:flutter_webinar/others/action_button.dart';

class IntroductionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: _buildInformation(),
              ),
              Expanded(
                child: _buildImage(),
              )
            ],
          ),
          ActionButton()
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 72),
      child: Image.network(
        "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/84211905_628036967932484_411665661769547776_o.jpg?_nc_cat=105&_nc_sid=e3f864&_nc_ohc=slTOSDpiYhkAX8_5VmB&_nc_ht=scontent.fktm10-1.fna&oh=3c5f69f25ccf7eaf5fa4f24a75700ac1&oe=5EF4638B",
        height: 400,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildInformation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 64, vertical: 72),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi! I'm John",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna",
            style: TextStyle(fontSize: 20, letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
