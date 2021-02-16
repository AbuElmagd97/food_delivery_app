import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/offer.dart';

import '../constants.dart';

class CommentButton extends StatelessWidget {
  const CommentButton({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet(context);
      },
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
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    Offer _offer = Offer(name: '25 % off!');
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.black87,
            body: SafeArea(
              child: Stack(
                children: [
                  Container(
                    height: height,
                    padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _offer.name,
                                style: style1,
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.white70,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  })
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
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
                              ],
                            ),
                            Text(
                              '2 Shares',
                              style: style2,
                            ),
                          ],
                        ),
                        Container(
                          width: width,
                          height: height * 0.4,
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.message_outlined,
                                size: 50,
                                color: Colors.white70,
                              ),
                              Text(
                                'No comments yet',
                                style:
                                style2.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Be the first to comment',
                                style: style2.copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      width: width,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25.0),
                                    ),
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14.0),
                                  hintText: "Write a comment",
                                  suffixIcon: Icon(
                                    Icons.emoji_emotions_rounded,
                                    color: Colors.deepOrange,
                                  ),
                                  fillColor: Colors.white10),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.send,color: Colors.deepOrange,),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
