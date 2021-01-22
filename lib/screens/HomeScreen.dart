import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:fooddeliveryapp/screens/offers_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _CurrentIndex=0;

  List<Widget>_items=[
    Center(child:Container(height: 300,width: 300,color: Colors.deepOrange,)),
    OffersScreen(),
    Center(child:Container(height: 300,width: 300,color: Colors.blueAccent,)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75,
        child: Column(
          children: [
            CurvedNavigationBar(
              height: 45,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: Colors.deepOrange,
              color: Colors.black,
              items: <Widget>[
                Icon(Icons.shopping_cart, size: 30,color: Colors.white,),
                Icon(Icons.local_offer, size: 30,color: Colors.white,),
                Icon(Icons.account_circle, size: 30,color: Colors.white,),
              ],
              onTap: (index) {
                setState(() {
                  _CurrentIndex=index;
                });
              },
            ),
            Container(
              height: 30,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Order",style: _CurrentIndex==0?TextStyle(color: Colors.deepOrange):TextStyle(color: Colors.white),),
                  Text("Offers",style:  _CurrentIndex==1?TextStyle(color: Colors.deepOrange):TextStyle(color: Colors.white),),
                  Text("Profile",style:  _CurrentIndex==2?TextStyle(color: Colors.deepOrange):TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ],
        ),
      ),
      body: _items[_CurrentIndex],
    );
  }
}
