import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/offer.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:fooddeliveryapp/widgets/share_button.dart';
import 'package:fooddeliveryapp/widgets/social_status_box.dart';

import '../constants.dart';
import 'comment_button.dart';

class OfferOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    Offer offer = Offer(
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
      regularPrice: "180 EGP",
      salePrice: "125 EGP",
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                offer.name,
                style: style1.copyWith(fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    offer.regularPrice,
                    style: style3.copyWith(
                        color: Colors.white70,
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text(
                    offer.salePrice,
                    style: style1,
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  offer.discount,
                  style: style2.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                offer.duration,
                style: style3.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SocialStatusBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CommentButton(width: width),
              ShareButton(width: width),
            ],
          ),
          Divider(
            color: Colors.white10,
            thickness: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'OFFER DESCRIPTION',
                style: style3.copyWith(
                    color: Colors.white70, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                offer.description,
                style: style3.copyWith(color: Colors.white70),
              ),
            ],
          ),
          Divider(
            color: Colors.white10,
            thickness: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PLACE INFO",
                style: style3.copyWith(color: Colors.white70),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(offer.restaurant.img),
                ),
                title: Text(
                  offer.restaurant.name,
                  style: style1.copyWith(fontSize: 18.0),
                ),
                trailing: GestureDetector(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.deepOrange,
                    ),
                    onTap: () {}),
              ),
              ListTile(
                title: Text(
                  "VIEW ALL COMMENT",
                  style: style2.copyWith(color: Colors.deepOrange),
                ),
                trailing: GestureDetector(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.deepOrange,
                    ),
                    onTap: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
