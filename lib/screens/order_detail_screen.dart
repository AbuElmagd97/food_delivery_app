import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/offer.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:fooddeliveryapp/widgets/offer_order.dart';
import 'dart:math' as math;
import '../constants.dart';

class OrderDetailScreen extends StatelessWidget {
  static const RouteName = "/OrderDetailScreen";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    const double _appBarBottomBtnPosition = 20.0;
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
      regularPrice: "125 EGP",
      salePrice: "180 EGP",
    );
    List<Offer> offerList = [
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

    Widget _buildListItem(BuildContext context, int index) {
      var width = MediaQuery.of(context).size.width;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          width: width,
          child: Column(
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
                              offerList[index].img,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
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
                            SizedBox(
                              width: 10,
                            ),
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
                        offerList[index].discount,
                        style: style3.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        offerList[index].name,
                        style: style1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        offerList[index].restaurant.name,
                        style: style2.copyWith(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offerList[index].duration,
                            style: style3.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(offerList[index].regularPrice,
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
                                    offerList[index].salePrice,
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
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(0.0),
                    child: Transform.translate(
                      offset: Offset(width * 0.4, _appBarBottomBtnPosition),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.thumb_up_outlined,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  floating: true,
                  flexibleSpace: Container(
                    width: width,
                    height: height * 0.3,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network(offer.img),
                    ),
                  ),
                  expandedHeight: height * 0.3,
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: _appBarBottomBtnPosition),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: OfferOrder(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (
                      context,
                      index,
                    ) {
                      return _buildListItem(context, index);
                    },
                    childCount: offerList.length,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: width,
                height: height * 0.1,
                color: Colors.black,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.deepOrange,
                  child: Text("ORDER"),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
