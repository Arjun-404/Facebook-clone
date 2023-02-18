import 'package:cloneapp/assets.dart';
import 'package:cloneapp/sections/headerButtonSection.dart';
import 'package:cloneapp/sections/statusSection.dart';
import 'package:cloneapp/sections/storysection.dart';
import 'package:cloneapp/sections/suggestionSection.dart';
import 'package:cloneapp/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:cloneapp/widgets/circularButton.dart';
import 'package:cloneapp/sections/roomSection.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider= Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickdivider=Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search screen appears!");
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("Messenger appears!");
                }),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            headerButtonSection(),
           thickdivider,
            roomSection(),
            thickdivider,
            StorySection(),
            thickdivider,
            PostCard(
              name: "Dulquer Salmaan",
              avatar: dulquer,
              publishedAt: "3m",
             postTitle:"Come fall in the magic of love!\n Sita Ramam" ,
             postImage: kunjikka,
              showblueTick: true,
              likeCount: "60k",
              shareCount: "5k",
              commentCount: "15k",
            ),
           thickdivider,
            PostCard(
              name: "Prithviraj Sukumaaran",
              avatar: prithviraj,
              publishedAt: "1h",
              postTitle:"IN&AS \n#Gold",
              postImage: prithvi,
              showblueTick: true,
              likeCount: "80k",
              shareCount: "7k",
              commentCount: "10k",
            ),
            thickdivider,
            PostCard(
              name: "Leo Messi",
              avatar: messi,
              publishedAt: "2 day ago",
              postTitle:    "Muchos éxitos en tu nueva etapa, Leandro Paredes. Fue maravilloso compartir tantas cosas en Paris y siempre me quedaré con todos los lindos momentos que vivimos juntos!! Y mucha suerte también para vos, Ander Herrera, me encantó conocerte"
              ,
              postImage: barca,
              showblueTick: true,
              likeCount: "120k",
              shareCount: "45k",
              commentCount: "80k",
            ),
            thickdivider,
            Suggestionsection(),
            thickdivider,
            PostCard(
              name: "Shah rukh Khan",
              avatar: sharukhkhan,
              publishedAt: "2 day ago",
              postTitle: "",
              postImage: srk,
              showblueTick: true,
              likeCount: "55k",
              shareCount: "5k",
              commentCount: "7k",
            ),
            thickdivider,
            PostCard(
              name: "Mammootty",
              avatar: mammooty,
              publishedAt: "4 day ago",
              postTitle: "Wait for the Ultimate!",
              postImage: roshaac,
              showblueTick: true,
              likeCount: "55k",
              shareCount: "5k",
              commentCount: "7k",
            ),

          ],


        ),
      ),
    );
  }
}
