import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        return _buildMenu(sizingInformation.isDesktop);
      },
    );
  }

  Widget _buildMenu(bool isExtended){
    return NavigationRail(
      backgroundColor: Color(0xffF2F2F2),
      selectedIndex: 1,
      extended: isExtended,
      onDestinationSelected: (index) {},
      unselectedLabelTextStyle: TextStyle(
        color: Color(0xff000000).withOpacity(0.6),
        fontSize: 18,
      ),
      selectedLabelTextStyle: TextStyle(
        color: Color(0xff707070),
        fontSize: 22,
      ),
      destinations: [
        NavigationRailDestination(
          label: Text("Main"),
          icon: Icon(Icons.home),
        ),
        NavigationRailDestination(
          label: Text("About Me"),
          icon: Icon(Icons.info),
        ),
        NavigationRailDestination(
          label: Text("My Works"),
          icon: Icon(Icons.dashboard),
        ),
        NavigationRailDestination(
          label: Text("My Skills"),
          icon: Icon(Icons.list),
        ),
        NavigationRailDestination(
          label: Text("Send me a message"),
          icon: Icon(Icons.message),
        ),
      ],
    );
  }
}
