import 'package:flutter/cupertino.dart';

class Music {
  String musicName;
  String singerName;
  String imageUrl;

  Music(
      {@required this.musicName,
      @required this.singerName,
      @required this.imageUrl});

  factory Music.fromJSON(Map<String, String> map) {
    return Music(
        musicName: map['musicName'],
        singerName: map['singerName'],
        imageUrl: map['imageUrl']);
  }
}
