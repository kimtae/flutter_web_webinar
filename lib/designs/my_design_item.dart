import 'package:flutter/material.dart';
import 'package:flutter_webinar/others/action_button.dart';

class MyDesignItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String date;
  final Function() onPressed;
  final bool isImageFirst;

  const MyDesignItem({
    Key key,
    this.title,
    this.description,
    this.imageUrl,
    this.date,
    this.onPressed,
    this.isImageFirst = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if (isImageFirst) ...[buildImage(context), buildInfo()],
        if (!isImageFirst) ...[buildInfo(), buildImage(context)],
      ],
    );
  }

  Widget buildInfo() {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
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
      ),
    );
  }

  Widget buildImage(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Image.network(
        imageUrl,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
