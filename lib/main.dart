import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/HomeScreen.dart';
import 'package:fooddeliveryapp/screens/Settings_Screen.dart';
import 'package:fooddeliveryapp/screens/map_screen.dart';
import 'package:fooddeliveryapp/screens/order_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
     routes: {
        SettingScreen.RouteName:(ctx)=>SettingScreen(),
        MapScreen.RouteName:(ctx) => MapScreen(),
        OrderDetailScreen.RouteName:(ctx) => OrderDetailScreen(),
     },
    );
  }
}
