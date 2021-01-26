import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/offer.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:fooddeliveryapp/widgets/social_box.dart';
import '../constants.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              width: width,
              color: Colors.black87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.grey, width: 0.5)),
                          width: 18,
                          height: 18,
                          child: Icon(
                            Icons.attach_money,
                            size: 18,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          " PRICE",
                          style: style2.copyWith(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _priceList(context),
                    ],
                  ),
                ],
              ),
            ),
            _mainOfferList(context),
          ],
        ),
      ),
    );
  }

  Widget _priceList(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<Offer> prices = [
      Offer(salePrice: "30 EGP"),
      Offer(salePrice: "40 EGP"),
      Offer(salePrice: "50 EGP"),
      Offer(salePrice: "60 EGP"),
      Offer(salePrice: "70 EGP"),
      Offer(salePrice: "100 EGP"),
    ];
    return Container(
      width: width * 0.75,
      height: height * 0.04,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: prices.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            alignment: Alignment.center,
            width: 60,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.grey,
                width: 0.3,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Text(
              prices[index].salePrice,
              style: style2.copyWith(
                  color: Colors.white70, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }

  Widget _mainOfferList(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<Offer> mainOffer = [
      Offer(
        restaurant: Restaurant(
            name: "Chicken Chister - Sidi Gaber",
            img:
            "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/p960x960/58032965_829072737443434_1361760720257024000_o.jpg?_nc_cat=106&ccb=2&_nc_sid=85a577&_nc_ohc=OqLCVCM6B48AX9f1Bnv&_nc_ht=scontent-hbe1-1.xx&tp=6&oh=372e89d3e825fd86d7b097bd9fac96b9&oe=6033AD42"),
        img:
        "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/s960x960/82743955_1027093370974702_6366493558312009728_o.png?_nc_cat=108&ccb=2&_nc_sid=dd9801&_nc_ohc=lv2SwE9NBCUAX9Rb5jL&_nc_ht=scontent-hbe1-1.xx&_nc_tp=30&oh=1dbe90d8827f6c5a80b596e41828e763&oe=60347372",
        name: "25 % off!",
        description:
        "Get your meal now (Crispy Melt Sandwich + Classic Sandwich + Crispy Ranchi Sandwich + Cheesy Beef Mushroom + 2Fries Box + 1 Liter Pepsi)",
        discount: "25% Discount",
        duration: "Valid till 31 Jan 2021",
        salePrice: "180 EGP",
      ),
      Offer(
        restaurant: Restaurant(
            name: "Maharaja - Sporting",
            img:
                "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/72211084_2008773672558024_2544823837195763712_n.png?_nc_cat=1&ccb=2&_nc_sid=85a577&_nc_ohc=hR769EYiAB4AX-Yz0Hs&_nc_ht=scontent-hbe1-1.xx&oh=d45c6cc8fa0b8e78b4729006d7e5c2c9&oe=603363BC"),
        img:
            "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/p960x960/123231638_2895863793849003_692479716266254173_o.jpg?_nc_cat=111&ccb=2&_nc_sid=8024bb&_nc_ohc=vayFgeERnggAX-ORmoN&_nc_ht=scontent-hbe1-1.xx&tp=6&oh=1e328239680a68b2a2419e8d047c0f48&oe=60370AC9",
        name: "% أكل مهراجا الهندي بخصم 30",
        description:
            " % دلوقتي تقدر تطلب وتستمتع بوجبات مهراجا الهندية بخصم 30",
        discount: "30% Discount",
        duration: "Valid till 31 Jan 2021",
        salePrice: "90 EGP",
      ),
      Offer(
        restaurant: Restaurant(
            name: "Chicken Chister - Sidi Gaber",
            img:
            "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/p960x960/58032965_829072737443434_1361760720257024000_o.jpg?_nc_cat=106&ccb=2&_nc_sid=85a577&_nc_ohc=OqLCVCM6B48AX9f1Bnv&_nc_ht=scontent-hbe1-1.xx&tp=6&oh=372e89d3e825fd86d7b097bd9fac96b9&oe=6033AD42"),
        img:
        "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/p960x960/134423430_1317256265291743_583119239967700407_o.jpg?_nc_cat=103&ccb=2&_nc_sid=8024bb&_nc_ohc=wDMqN_-bkngAX-dOIIL&_nc_ht=scontent-hbe1-1.xx&tp=6&oh=edb5c8334eb085bd1310a520cb1202a6&oe=6036F664",
        name: "25 % off!",
        description:
        "Get your meal now (Crispy Melt Sandwich + Classic Sandwich + Crispy Ranchi Sandwich + Cheesy Beef Mushroom + 2Fries Box + 1 Liter Pepsi)",
        discount: "25% Discount",
        duration: "Valid till 31 Jan 2021",
        salePrice: "180 EGP",
      ),
    ];
    return Container(
      width: width,
      height: height,
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          itemCount: mainOffer.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(mainOffer[index].restaurant.img),
                        ),
                        title: Text(
                          mainOffer[index].restaurant.name,
                          style: style1.copyWith(fontSize: 18.0),
                        ),
                      ),
                      Container(
                        width: width,
                        height: height * 0.25,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.network(mainOffer[index].img)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        mainOffer[index].name,
                        style: style1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        mainOffer[index].description,
                        overflow: TextOverflow.ellipsis,
                        style: style2.copyWith(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            mainOffer[index].duration,
                            style: style3,
                          ),
                          Container(
                            width: 75,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Text(
                              mainOffer[index].salePrice,
                              style:
                                  style2.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      SocialBox(),
                      Divider(
                        thickness: 5,
                        color: Colors.white10,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 30,
                  child: Container(
                    alignment: Alignment.center,
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepOrange.withOpacity(0.7),
                    ),
                    child: Text(
                      mainOffer[index].discount,
                      style: style2.copyWith(
                          fontSize: 12, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
