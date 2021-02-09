import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../constants.dart';

class SocialStatusBox extends StatelessWidget {
  const SocialStatusBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.thumb_up,
            color: Colors.white,
            size: 10,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '1',
          style: style2.copyWith(color: Colors.white70),
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.chat_bubble_outline,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '9',
          style: style2.copyWith(color: Colors.white70),
        ),
        SizedBox(
          width: 15,
        ),
        Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Icon(
              Icons.reply,
              color: Colors.white,
              size: 20,
            )),
        SizedBox(
          width: 5,
        ),
        Text(
          '1',
          style: style2.copyWith(color: Colors.white70),
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '2',
          style: style2.copyWith(color: Colors.white70),
        ),
      ],
    );
  }
}
