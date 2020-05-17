
import 'package:flutter/material.dart';
import 'package:myportofolio/config/assets.dart';
import 'package:myportofolio/config/responsive_widget.dart';
import 'package:myportofolio/model/personal_info.dart';
import 'package:myportofolio/section/personal_info_section.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;


class InfoDetails extends StatelessWidget {
  const InfoDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      // double avatarSize =
      //     sizingInformation.deviceScreenType == DeviceScreenType.mobile
      //         ? 90
      //         : 140;

      // double titleSize =
      //     sizingInformation.deviceScreenType == DeviceScreenType.mobile
      //         ? 25
      //         : 60;
      // double profesionalSkillSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ?
      // 1.3 : 2;
      // double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ?
      // 14 : 21;
      return Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
        child:new ResponsiveWidget(
          largeScreen: columnContent(context, 140, 60, 2, 21,600,16),
          mediumScreen: columnContent(context, 140, 60, 2, 21,600,16),
          smallScreen: columnContent(context, 120, 40, 1.5, 17,500,15),
          vsmallScreen: columnContent(context, 80, 25, 1.2, 15,400,14),
        )
      ));
    });
    
  }

  Column columnContent(
    BuildContext context,double avatarSize, 
    double titleSize,double profesionalSkillSize,
    double descriptionSize, double quote,double fbSize
    ){
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: Container(
                  width: avatarSize,
                  height: avatarSize,
                  decoration: new BoxDecoration(
                  border: Border.all(
                          color: Color.fromARGB(255, 212, 212, 212), width: 4),
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new Image.asset(Assets.avatar).image,
                          )
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            new Center(
              child: Text(
              'RHOMY IDRIS S.',
              style: TextStyle(
                fontFamily: 'Segoe',
                fontWeight: FontWeight.w600,
                height: 0.9,
                fontSize: titleSize,
              ),
            ),
            ),
            SizedBox(
              height: 15,
            ),
            new Center(
              child: Text('Designer | Artist | Writer',
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: profesionalSkillSize, 
                    
             ),
            ),
            SizedBox(
              height: 15,
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                            FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(Assets.github)),
                              label: Text('Github'),
                              onPressed: () => html.window
                              .open('https://github.com/rhomyidrissardi_', 'rhomyidrissardi_'),
                            ),FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(Assets.twitter)),
                              label: Text('Twitter'),
                              onPressed: () => html.window
                              .open('https://twitter.com/rhomyidrissardi_', 'rhomyidrissardi_'),
                            ),
              ],
            ),
            new Center(
              child: Container(
              width:quote,
              child: Text(
              "I'm from Lombok with a passion of Web, Graphic and Interface design. I specialise in standards compliant website with a focus on usability Enthusiastic about life,design,and innovation.",
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
              textAlign: TextAlign.center,
            ),
            ),
            ),
            SizedBox(
              height: 30,
            ),
            new Center(
              child: new Text('Projects : '+personal_info.length.toString(),style: TextStyle(fontFamily: "Segoe",fontSize: 24, fontWeight: FontWeight.w600)),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
              padding: EdgeInsets.only(bottom: 10),
              decoration: myBoxDecoration(),
              child: PersonalInfoSection(),
            ),
            new Center(
              child: Padding(padding: EdgeInsets.all(20),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text('Made With ',style: TextStyle(fontSize: fbSize,color: Colors.grey),),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 20.0,
                    ),
                    new Text(' Using Flutter 1.19',style: TextStyle(fontSize: fbSize,color: Colors.grey),)
                  ],
                ),
              ),
            )
      
            
          ],
        );
  }

  BoxDecoration myBoxDecoration() {
  return BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 212, 212, 212)),
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
    );
  }
}

