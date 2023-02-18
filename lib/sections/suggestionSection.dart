import 'package:cloneapp/assets.dart';
import 'package:cloneapp/widgets/suggestionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Suggestionsection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
        title: Text("Peoeple you may know"),
    trailing: IconButton(
    onPressed: (){
      print("More clicked");
    },
    icon:Icon( Icons.more_horiz,color: Colors.grey[700],),
    ),
    ),
          Container(
            height: 390,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCard(
                name: "Cristiano Ronaldo",
                avatar: ronaldo,
                mutualFriends: "4 Mutual Friends",
                addFriend: (){
                  print("Request friendship!!");
                },
                removeFriend: (){
                  print("Remove this Person!!");
                },

              ),
              SuggestionCard(
                name: "Fahad Faasil",
                avatar: saubin,
                mutualFriends: "36 Mutual Friends",
                addFriend: (){
                  print("Request friendship!!");
                },
                removeFriend: (){
                  print("Remove this Person!!");
                },

              ),
              SuggestionCard(
                name: "Aparna Baalamurali",
                avatar: aparna,
                mutualFriends: "12 Mutual Friends",
                addFriend: (){
                  print("Request friendship!!");
                },
                removeFriend: (){
                  print("Remove this Person!!");
                },

              ),
            ],

          ),
          ),
      ],
    ),
    );
  }

}