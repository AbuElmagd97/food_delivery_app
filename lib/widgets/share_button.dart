import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'dart:math' as math;

import '../constants.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Share.share('check out my website https://example.com'),
      child: Container(
        width: width * 0.45,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70, width: 0.2),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              'SHARE',
              style: style2.copyWith(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
