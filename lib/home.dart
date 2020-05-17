import 'package:flutter/material.dart';
import 'package:myportofolio/centeredview.dart';
import 'package:myportofolio/home_content/home_content_desktop.dart';
import 'package:myportofolio/home_content/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navigation.dart';

class HomeView extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new CenteredView(
          child: new Container(
            child: new Column(children:<Widget>[
            new NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentDesktop(),
              ),
            )
          ],
          )
        ),
      )
    );
  }

}