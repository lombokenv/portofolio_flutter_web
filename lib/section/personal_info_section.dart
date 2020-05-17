import 'package:flutter/material.dart';
import 'package:myportofolio/config/responsive_widget.dart';
import 'package:myportofolio/model/personal_info.dart';
import 'package:myportofolio/widget/personal_info_widget.dart';

class PersonalInfoSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GridView.count(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),
          children: List.generate(
              personal_info.length, (index) => PersonalInfoWidget(personal_info[index], 0)),
        ),
      smallScreen: ListView.builder(
          itemCount: personal_info.length,
          itemBuilder: (context, index) => PersonalInfoWidget(
              personal_info[index], (index == personal_info.length - 1 ? 16.0 : 0))),
      vsmallScreen: ListView.builder(
          itemCount: personal_info.length,
          itemBuilder: (context, index) => PersonalInfoWidget(
              personal_info[index], (index == personal_info.length - 1 ? 16.0 : 0))),
    );
  }
}