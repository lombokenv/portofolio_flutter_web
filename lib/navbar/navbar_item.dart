import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontFamily: 'Segoe',fontSize: 18,fontWeight: FontWeight.w600),
    );
  }
}