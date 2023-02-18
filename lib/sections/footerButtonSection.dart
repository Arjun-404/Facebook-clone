import 'package:flutter/material.dart';

class footerButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () {
              print("Like this post!");
            },
            icon: Icon(
              Icons.thumb_up_off_alt,
              color: Colors.grey,
            ),
            label: Text(
              "Like",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          TextButton.icon(
            onPressed: () {
              print("Comment this post!");
            },
            icon: Icon(
              Icons.comment_outlined,
              color: Colors.grey,
            ),
            label: Text("Comment",style: TextStyle(color: Colors.black),),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          TextButton.icon(
            onPressed: () {
              print("share this post!");
            },
            icon: Icon(
              Icons.share,
              color: Colors.grey,
            ),
            label: Text("Share",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
