
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget vsmallScreen;

  const ResponsiveWidget(
      {Key key,
        @required this.largeScreen,
        this.mediumScreen,
        this.smallScreen,
        this.vsmallScreen})
      : super(key: key);

  static bool isvSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 300;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 300 &&
        MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return largeScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return mediumScreen ?? largeScreen;
        }else if (constraints.maxWidth < 800 && constraints.maxWidth > 300) {
          return smallScreen ?? largeScreen;
        }else {
          return vsmallScreen ?? largeScreen;
        }
      },
    );
  }
}