import 'package:cloneapp/assets.dart';
import 'package:cloneapp/widgets/avatar.dart';
import 'package:flutter/material.dart';

class roomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: mohanlal,displayStatus: true),
          Avatar(displayImage:dulquer,displayStatus: true ),
          Avatar(displayImage: messi,displayStatus: true),
          Avatar(displayImage: sharukhkhan,displayStatus: true),
          Avatar(displayImage: mammooty,displayStatus: true),
          Avatar(displayImage: ronaldo,displayStatus: true),
          Avatar(displayImage: messi,displayStatus: true),
          Avatar(displayImage: prithviraj,displayStatus: true),
          Avatar(displayImage: mammooty,displayStatus: true),

        ],
      ),
    );
    }
  Widget createRoomButton(){
   return Container(
     padding: EdgeInsets.only(left: 5,right: 5),
       child:OutlinedButton.icon(
         icon: Icon(
           Icons.video_call,
           color: Colors.purple,
         ),
         label: Text(
           "Create \nRoom",
         ),
         onPressed: () {
           print("Create a chat Room");
         },
         style: OutlinedButton.styleFrom(
           shape: StadiumBorder(),
           side: BorderSide( color: Colors.blue.shade100,
             width: 2,
           ),
         ),
       ),
   );
  }
  }

