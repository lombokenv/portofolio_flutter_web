import 'package:flutter/material.dart';
import 'package:myportofolio/config/assets.dart';
import 'package:myportofolio/config/responsive_widget.dart';
import 'package:myportofolio/themeswitcher.dart';

class NavigationBar_Mobile extends StatelessWidget {
  const NavigationBar_Mobile({Key key}) : super(key: key);

  Container contain(BuildContext context, double ch,fh,ih,String title){
    return Container(
      height: ch,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
                  icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: ih,width: ih,),
                  onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
          ),
          Text(title,style: TextStyle(fontFamily: 'Segoe',fontSize: fh,fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: contain(context, 80.0, 24,20,'Portofolio'),
      smallScreen: contain(context, 80.0, 22,20,'Portofolio'),
      vsmallScreen: contain(context, 40.0, 18,18,''),

    );
  }
}