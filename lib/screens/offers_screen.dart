import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/offer.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';

import '../constants.dart';

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            width: width,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Offers",style: style1.copyWith(fontWeight: FontWeight.bold),),
                    Container(
                        width: 75,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 0.5),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.filter_list_outlined,color: Colors.white,),
                            Text("FILTER",style: style2,),
                          ],
                        )),
                  ],
                ),
                Divider(color: Colors.black,height: 30,),
                _offers(context),
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

  Widget _offers(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<Offer> offers = [  /// for test only
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
      Offer(
          name: "Happiness Offer",
          img:
              "https://images.unsplash.com/photo-1597511120363-9ce47aae7941?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGZvb2QlMjBtZWFsc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          discount: "20% Discount",
          duration: "Valid till 31 Jan 2021",
          restaurant: Restaurant(name: "Khawater Demeshqya Restaurant"),
          regularPrice: "125 EGP",
          salePrice: "100 EGP"),
    ];
    return Container(
      width: width,
      height: height * 0.65,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              offers[index].img,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text(
                              '1 ',
                              style: style2,
                            ),
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              '1',
                              style: style2,
                            ),
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.reply_outlined,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        offers[index].discount,
                        style: style3.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        offers[index].name,
                        style: style1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        offers[index].restaurant.name,
                        style: style2.copyWith(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offers[index].duration,
                            style: style3.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.06,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(offers[index].regularPrice,
                                  style: style2.copyWith(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough)),
                              Container(
                                  width: 75,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    offers[index].salePrice,
                                    style: style2.copyWith(
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          );
        },
      ),
    );
  }
}
