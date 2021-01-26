import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../constants.dart';
import 'fb_reaction.dart';

class SocialBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FbReaction(),
          Container(
            height: 30,
            child: Row(
              children: [
                Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.white70,
                  size: 15,
                ),
                Text(
                  ' COMMENT',
                  style: style2,
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            child: Row(
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Icon(
                    Icons.reply_outlined,
                    color: Colors.white70,
                    size: 15,
                  ),
                ),
                Text(
                  ' SHARE',
                  style: style2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
