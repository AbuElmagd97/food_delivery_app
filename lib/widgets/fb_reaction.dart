import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import '../constants.dart';
class FbReaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        FlutterReactionButton(
          initialReaction: Reaction(
            icon: Row(
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                  color: Colors.white70,
                  size: 15,
                ),
                Text(
                  ' LIKE',
                  style: style2,
                ),
              ],
            ),
          ),
          boxColor: Colors.white,
          boxRadius: 30,
          boxDuration: Duration(milliseconds: 500),
          boxAlignment: AlignmentDirectional.bottomStart,
          onReactionChanged: (reaction, index) {
            print("reaction selected index : $index");
          },
          reactions: [
            Reaction(
              previewIcon:
              _buildPreviewIcon('images/like.gif', 'Like'),
              icon: _buildIcon('images/like.gif','Like'),
            ),
            Reaction(
              previewIcon:
              _buildPreviewIcon('images/love.gif', 'Love'),
              icon: _buildIcon('images/love.gif','Love'),
            ),
            Reaction(
              previewIcon:
              _buildPreviewIcon('images/haha.gif', 'Haha'),
              icon: _buildIcon('images/haha.gif','Haha'),
            ),
            Reaction(
              previewIcon:
              _buildPreviewIcon('images/sad.gif', 'Sad'),
              icon: _buildIcon('images/sad.gif','Sad'),
            ),
            Reaction(
              previewIcon:
              _buildPreviewIcon('images/wow.gif', 'Wow'),
              icon: _buildIcon('images/wow.gif','Wow'),
            ),
            Reaction(
              previewIcon:
              _buildPreviewIcon('images/angry.gif', 'Angry'),
              icon: _buildIcon('images/angry.gif','Angry'),
            ),
          ],
        ),
      ],
    );
  }
  Widget _buildIcon(String path,String react) => Row(
    children: [
      Image.asset(
        path,
        height: 50,
        width: 50,
      ),
      SizedBox(width: 10,),
      Text(react,style: style2,),
    ],
  );

  Widget _buildPreviewIcon(String path, String text) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
        const SizedBox(height: 7.5),
        Image.asset(path, height: 40),
      ],
    ),
  );
}
