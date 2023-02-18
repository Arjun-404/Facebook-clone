import 'package:cloneapp/assets.dart';
import 'package:cloneapp/widgets/storyCard.dart';
import 'package:flutter/material.dart';


class StorySection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:[
          StoryCard(
        labelText:"Add To Story",
            avatar: mohanlal,
            story: mohanlal,
            createStoryStatus: true,
          ),
          StoryCard(
             labelText:"Mammootty",
            avatar: mammooty,
            story: mammokka,
            displayBorder: true,
          ),
          StoryCard(
            labelText:"Sharukh Khan",
            avatar: sharukhkhan,
            story: jawan,
            displayBorder: true,
          ),
          StoryCard(
            labelText:"Dulquer Salmaan",
            avatar: dulquer,
            story: dq,
            displayBorder: true,
          ),
          StoryCard(
            labelText:"Leo Messi",
            avatar: messi,
            story: ney,
            displayBorder: true,
          ),
          StoryCard(
            labelText:"Mohanlal",
            avatar: mohanlal,
            story: ettan,
            displayBorder: true,
          ),
        ],

    ),
    );
  }

}