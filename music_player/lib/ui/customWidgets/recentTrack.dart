import 'package:flutter/material.dart';
import '../../data/models/album.dart';

class RecentTrack extends StatelessWidget {
  final Album album;

  RecentTrack({@required this.album});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(album.imageUrl),
            radius: 35,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(album.albumName,style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
