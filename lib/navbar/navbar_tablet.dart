import 'package:flutter/material.dart';
import 'package:myportofolio/config/assets.dart';
import 'package:myportofolio/themeswitcher.dart';
import 'package:myportofolio/navbar/navbar_item.dart';

class NavigationBar_Tablet extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
                'Portofolio',
                style: TextStyle(fontFamily: 'Segoe',fontSize: 24,fontWeight: FontWeight.w600),
          
          ),
          Spacer(),
          IconButton(
                  icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
                  onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
          )
           
        ],
      ),
    );
  }
}