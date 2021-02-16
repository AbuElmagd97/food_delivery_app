import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/offer.dart';

import '../constants.dart';

class CartScreen extends StatefulWidget {
  static const RouteName = 'CartScreen';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Offer _offer = Offer(
      name: 'Abo Reyad Alsory Restaurant - Smouha (FREE DELIVERY)',
      description: 'Half Chicken Meal & for FREE delivery',
      salePrice: '45',
      img:
          'https://scontent-pmo1-1.xx.fbcdn.net/v/t1.0-9/127088912_932976377110193_3956807313794960468_o.jpg?_nc_cat=108&ccb=3&_nc_sid=730e14&_nc_ohc=6IjypzE1GQkAX-V-UNk&_nc_ht=scontent-pmo1-1.xx&oh=4622339edb2e9d9be5c61a904f6675f2&oe=60513028');

  int _counter = 1;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 1) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _price = int.parse(_offer.salePrice);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("My Cart"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          _buildItemCart(context),
          Positioned(
            bottom: 0.0,
            child: Container(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.6,
                    alignment: Alignment.center,
                    color: Colors.black87,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Order Subtotal',
                          style: style1.copyWith(color: Colors.white70),
                        ),
                        Text(
                          '${(_price * _counter)} EGP',
                          style: style2.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: width * 0.45,
                        height: height * 0.06,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.deepOrange, width: 1),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'ADD ITEMS',
                          style: style2.copyWith(color: Colors.deepOrange),
                        ),
                      ),
                      Container(
                        width: width * 0.45,
                        height: height * 0.06,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'CHECKOUT',
                          style: style2.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemCart(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _offer.name,
              style: style1,
            ),
            Divider(
              color: Colors.white,
              thickness: 0.1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.55,
                  child: Text(
                    _offer.description,
                    style: style1,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3.0),
                  child: Container(
                    child: Image.network(
                      _offer.img,
                      width: width * 0.25,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  '${_offer.salePrice} EGP',
                  style: style2.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: width * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white10)),
                        child: GestureDetector(
                          child: Icon(
                            Icons.delete_forever,
                            color: Colors.white70,
                            size: 17,
                          ),
                          onTap: () => _decrement(),
                        ),
                      ),
                      Text(
                        '$_counter',
                        style: style2.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white10)),
                        child: GestureDetector(
                          child: Icon(
                            Icons.add,
                            color: Colors.white70,
                            size: 17,
                          ),
                          onTap: () => _increment(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Colors.white,
              thickness: 0.1,
            ),
            Text(
              'Special Request',
              style: style1,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Additional Notes',
              style: style2.copyWith(color: Colors.grey),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'e.g. without onion',
                  hintStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.white, width: 0.1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.white, width: 0.1),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white10,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
