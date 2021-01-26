import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/screens/Profile_Screen.dart';
import 'package:fooddeliveryapp/screens/Settings_Screen.dart';
import 'package:fooddeliveryapp/screens/offers_screen.dart';
import 'package:fooddeliveryapp/screens/order_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> _items = [
    //TODO: Order page
    OrderScreen(),
    OffersScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 2
          ? AppBar(
              backgroundColor: Colors.deepOrange,
              title: Text(
                "Profile",
                style: style1.copyWith(fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    print("Settings");
                  },
                  icon: IconButton(
                    icon: Icon(Icons.settings,
                      color: Colors.white,),
                    onPressed: (){
                      Navigator.of(context).pushNamed(SettingScreen.RouteName);
                    },
                  ),
                ),
              ],
            )
          : _buildAppBar(),
      body: Stack(
        children: [
          Container(
            child: _items[_currentIndex],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: Colors.transparent),
                  child: Container(
                    height: 75,
                    child: Column(
                      children: [
                        CurvedNavigationBar(
                          height: 45,
                          backgroundColor: Colors.transparent,
                          buttonBackgroundColor: Colors.deepOrange,
                          color: Colors.black,
                          items: <Widget>[
                            Icon(
                              Icons.shopping_cart,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.local_offer,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.account_circle,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                          onTap: (index) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        Container(
                          height: 30,
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Order",
                                style: _currentIndex == 0
                                    ? TextStyle(color: Colors.deepOrange)
                                    : TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Offers",
                                style: _currentIndex == 1
                                    ? TextStyle(color: Colors.deepOrange)
                                    : TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Profile",
                                style: _currentIndex == 2
                                    ? TextStyle(color: Colors.deepOrange)
                                    : TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),)
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepOrange,
      actions: [
        GestureDetector(
          onTap: () {
            _showBottomSheet(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(
                  "Alexandria,Victoria",
                  style: style2.copyWith(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.3,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivering to",
                  style: style1,
                ),
                Text(
                  "Recent Delivery Areas",
                  style: TextStyle(fontSize: 14.0, color: Colors.white70),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.history,
                      color: Colors.white30,
                    ),
                    Text(
                      " Alexandria,Victoria",
                      style: style2.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    IconButton(
                      onPressed: () {
                        print('Deleted');
                      },
                      icon: Icon(
                        Icons.delete_forever,
                        color: Colors.white30,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    print("Added");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        "Add New Delivery address",
                        style: style2.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.33,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
