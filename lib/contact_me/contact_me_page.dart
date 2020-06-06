import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactMePage extends StatefulWidget {
  ContactMePage({Key key}) : super(key: key);

  @override
  _ContactMePageState createState() => _ContactMePageState();
}

class _ContactMePageState extends State<ContactMePage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ScreenTypeLayout.builder(
        mobile: (_)=> _buildItem(true),
        desktop: (_) => _buildItem(false),
      ),
    );
  }

  Widget _buildItem(isMobile){
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                filled: true,
                fillColor: Color(0xffE3DDDD),
                labelText: "You Name",
                labelStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 24,),
            TextField(
              style: TextStyle(fontSize: 30),

              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16),
                  filled: true,
                  fillColor: Color(0xffE3DDDD),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 16,
                  )),
            ),
            SizedBox(height: 24,),

            TextField(
              maxLines: 10,
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16),
                  filled: true,
                  fillColor: Color(0xffE3DDDD),

                  labelText: "Description",
                  labelStyle: TextStyle(
                    fontSize: 16,
                  )),
            ),
            SizedBox(height: 40,),

            RaisedButton(
              child: Text("Send Message"),
            )
          ],
        ),
      ),
    );
  }
}
