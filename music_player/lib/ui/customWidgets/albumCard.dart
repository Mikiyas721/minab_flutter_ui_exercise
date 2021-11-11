import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ui/customWidgets/imageText.dart';
import '../../data/models/album.dart';

class AlbumCard extends StatelessWidget {
  final Album album;

  AlbumCard({@required this.album});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 15),
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              image: AssetImage(album.imageUrl), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ImageText(
              text: 'Your mix',
            ),
          ),
          Align(
            alignment: Alignment(-1, 0.7),
            child: ImageText(
              text: album.albumName,
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                  Icons.play_circle_fill_sharp,
                  color: Colors.white,
                  size: 30,
                ),
              )
        ],
      ),
    );
  }
}
