import 'package:flutter/material.dart';

class headerButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         TextButton.icon(
           onPressed: (){
             print("Live button clicked!");
           },
           icon: Icon(Icons.video_call,
           color: Colors.red,
           ),
           label: Text("Live"),
         ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          TextButton.icon(
            onPressed: (){
              print("Take photo!");
            },
            icon: Icon(Icons.photo,
              color: Colors.green,
            ),
            label: Text("Photo"),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          TextButton.icon(
            onPressed: (){
              print("Create chat room!");
            },
            icon: Icon(Icons.video_call,
              color: Colors.purple,
            ),
            label: Text("Room"),
          ),
        ],
      ),
    );
  }
}
