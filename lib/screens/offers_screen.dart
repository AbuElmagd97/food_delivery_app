import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';

import '../constants.dart';

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            width: width,
            height: height * 0.25,
            color: Colors.black87,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Featured Restaurants",
                  style: style1.copyWith(fontWeight: FontWeight.bold),
                ),
                _featuredRestaurants(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _featuredRestaurants(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<Restaurant> restaurants = [
      /// for test only
      Restaurant(
        name: "Maharaja - Sporting",
        img:
            "https://images.unsplash.com/photo-1572635148818-ef6fd45eb394?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTB8fHllbGxvdyUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ),
      Restaurant(
        name: "Maharaja - Sporting",
        img:
            "https://images.unsplash.com/photo-1572635148818-ef6fd45eb394?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTB8fHllbGxvdyUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ),
      Restaurant(
        name: "Maharaja - Sporting",
        img:
            "https://images.unsplash.com/photo-1572635148818-ef6fd45eb394?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTB8fHllbGxvdyUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ),
      Restaurant(
        name: "Maharaja - Sporting",
        img:
            "https://images.unsplash.com/photo-1572635148818-ef6fd45eb394?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTB8fHllbGxvdyUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ),
      Restaurant(
        name: "Maharaja - Sporting",
        img:
            "https://images.unsplash.com/photo-1572635148818-ef6fd45eb394?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTB8fHllbGxvdyUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ),
      Restaurant(
        name: "Maharaja - Sporting",
        img:
            "https://images.unsplash.com/photo-1572635148818-ef6fd45eb394?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTB8fHllbGxvdyUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ),
    ];
    return Container(
      width: width,
      height: height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                  width: 80.0,
                  height: 50.0,
                  margin: EdgeInsets.only(top: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      restaurants[index].img,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 65,
                child: Text(
                  restaurants[index].name,
                  style: style2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
