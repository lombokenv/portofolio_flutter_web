import 'package:flutter/material.dart';
import 'package:myportofolio/themeswitcher.dart';
import 'home.dart';
import 'config/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: _MainState(),
    );
  }
}
class _MainState extends StatelessWidget {
  const _MainState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rhomy Idris Sardi',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: new Scaffold(
        body: new HomeView(),
      ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ThemeSwitcherWidget(
//       initialDarkModeOn: false,
//       child:  MaterialApp(
//               debugShowCheckedModeBanner: false,
//               theme: ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
//               title: 'Hello! Devs',
//               home: new HomeView(),
//       )
//     );
    
//   }
// }