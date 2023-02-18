import 'package:cloneapp/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;


  SuggestionCard({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeFriend,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10,),
      child: Stack(
        children: [
         SuggestionImage(),
          SuggestionDetails(),
        ],
      ),
    );
  }
  Widget SuggestionDetails(){
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
       height: 140,
       color: Colors.grey[200],
        child: Column(
          children: [
            ListTile(
              title: Text(name!=null?name:""),
              subtitle: Text(mutualFriends!=null?mutualFriends:""),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround ,
                children: [
                IconButton(buttonAction:addFriend,
                  buttonIcon: Icons.account_box,
                  buttonIconColor: Colors.white,
                  buttonText: "Add Friend",
                  buttonColor: Colors.blue.shade700,
                  buttonTextColor: Colors.white,
                ),
                  blankButton(buttonAction: () {
                    print("Remove Suggestion!!");
                  },
                      buttonText: "Remove",
                      buttonColor: Colors.grey.shade300,
                      TextColor:Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget blankButton({
   required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color TextColor,

})
  {
    return TextButton(
      onPressed: buttonAction,
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
      ),
      child: Text(buttonText,
        style: TextStyle(color: TextColor,
        ),

      ),
    );
  }


  Widget IconButton({
  required void Function() buttonAction,
     required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
})
  {
return TextButton.icon(
  icon: Icon(buttonIcon,
  color: buttonIconColor,
  ),

  label: Text(buttonText,
  style:TextStyle(
      color: buttonTextColor,
  ),
  ),

  onPressed: buttonAction,
  style: TextButton.styleFrom(
    backgroundColor: buttonColor,
  ),
);
  }
  Widget SuggestionImage(){
    return Positioned(
      top: 0,
      left: 0,
      right: 0,

      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child:avatar!=null? Image.asset(avatar,
          height: 250,
          fit: BoxFit.cover,
      ):SizedBox(),
    ),
    );
  }
}