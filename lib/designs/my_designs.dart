import 'package:flutter/material.dart';
import 'package:flutter_webinar/designs/my_design_item.dart';

class MyDesigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,

      padding: EdgeInsets.all(64),
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Column(
          children: <Widget>[
            Text(
              "My Designs",
              style: TextStyle(
                fontSize: 64,
              ),
            ),
            MyDesignItem(
              imageUrl:
                  "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/101418065_717758032293710_7133650785543389184_o.png?_nc_cat=109&_nc_sid=730e14&_nc_ohc=oQY___70pB4AX-YsgOd&_nc_ht=scontent.fktm10-1.fna&oh=0590dba65379dcf13fd9febf10056aec&oe=5EF69542",
              title: "Flutter for WEB",
              description:
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et",
              date: "18th Oct 2019",
              onPressed: () {},
            ),
            SizedBox(height: 24,),

            MyDesignItem(
              imageUrl:
              "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/101418065_717758032293710_7133650785543389184_o.png?_nc_cat=109&_nc_sid=730e14&_nc_ohc=oQY___70pB4AX-YsgOd&_nc_ht=scontent.fktm10-1.fna&oh=0590dba65379dcf13fd9febf10056aec&oe=5EF69542",
              title: "Flutter for WEB",
              description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et",
              date: "18th Oct 2019",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
