import 'package:flutter/material.dart';
import 'package:music_player/data/models/music.dart';

class CollapsedPlayer extends StatelessWidget {
  final Music music;
  final ScrollController controller;
  CollapsedPlayer({@required this.music,@required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Container(
        height: 75,
        padding: EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
            color: Color(0xff9c3b42),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(music.imageUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: '${music.musicName}\n',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                TextSpan(
                    text: music.singerName,
                    style: TextStyle(fontSize: 12, color: Colors.white)),
              ]),
            ),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.pause,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.fast_forward,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
