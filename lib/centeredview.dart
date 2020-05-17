import 'package:flutter/material.dart';
import 'package:myportofolio/config/responsive_widget.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Container contain(double width, double hp, double vp){
      
      return Container(
      padding: EdgeInsets.symmetric(horizontal: hp, vertical: vp),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width),
          child: child,
          ),
    );
    }
    return ResponsiveWidget(
      largeScreen: contain(1200, 70, 30),
      mediumScreen: contain(1200, 70, 30),
      smallScreen: contain(799, 20, 30),
      vsmallScreen: contain(299, 10, 30),

    );
  }
}