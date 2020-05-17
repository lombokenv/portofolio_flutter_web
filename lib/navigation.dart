import 'package:flutter/material.dart';
import 'package:myportofolio/navbar/navbar_tablet.dart';
import 'package:myportofolio/navbar/navbar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBar_Mobile(),
      tablet: NavigationBar_Tablet(),
    );
  }
}


