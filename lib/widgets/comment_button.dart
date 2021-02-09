import 'package:flutter/material.dart';

import '../constants.dart';

class CommentButton extends StatelessWidget {
  const CommentButton({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.45,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white70,width: 0.2),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'COMMENT',
            style: style2.copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}