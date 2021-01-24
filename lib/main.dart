import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/HomeScreen.dart';
import 'package:fooddeliveryapp/screens/Settings_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
     routes: {
        SettingScreen.RouteName:(ctx)=>SettingScreen(),
     },
    );
  }
}
