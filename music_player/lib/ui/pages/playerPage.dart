import 'package:flutter/material.dart';
import '../../data/models/music.dart';

class PlayerPage extends StatelessWidget {
  final Music music;
  final ScrollController controller;

  PlayerPage({@required this.music, @required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff191919),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      padding: EdgeInsets.only(top: 10, left: 30, right: 30),
      child: ListView(
        controller: controller,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Now Playing\n',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  TextSpan(
                      text: music.musicName,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ]),
              ),
              IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 15),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(music.imageUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Row(
            children: [
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
                  icon: Icon(Icons.star_border, color: Colors.white),
                  onPressed: () {})
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Slider(
                onChanged: (double value) {},
                value: 0.35,
                activeColor: Colors.white,
                inactiveColor: Color(0xff525252),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('1:09', style: TextStyle(color: Color(0xff979797))),
              Text('4:04', style: TextStyle(color: Color(0xff979797))),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon:
                        Icon(Icons.shuffle, color: Color(0xff818181), size: 30),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.skip_previous_sharp,
                        color: Colors.white, size: 40),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      color: Colors.white,
                      size: 50,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.skip_next_sharp,
                        color: Colors.white, size: 40),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.loop, color: Color(0xff818181), size: 30),
                    onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
