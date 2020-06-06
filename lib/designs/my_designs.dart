import 'package:flutter/material.dart';
import 'package:flutter_webinar/designs/my_design_item.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyDesigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => _buildMobileDesign(context),
      desktop: _buildDesktopDesign,
    );
  }

  Widget _buildMobileDesign(context) {
    return Column(
      children: _buildItems(),
    );
  }

  Widget _buildDesktopDesign(context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height
      ),
      child: Column(
        children: _buildItems(),
      ),
    );
  }

  List<Widget> _buildItems() {
    return [
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
      SizedBox(
        height: 24,
      ),
      MyDesignItem(
        imageUrl:
            "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/101418065_717758032293710_7133650785543389184_o.png?_nc_cat=109&_nc_sid=730e14&_nc_ohc=oQY___70pB4AX-YsgOd&_nc_ht=scontent.fktm10-1.fna&oh=0590dba65379dcf13fd9febf10056aec&oe=5EF69542",
        title: "Flutter for WEB",
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et",
        date: "18th Oct 2019",
        onPressed: () {},
      )
    ];
  }
}
