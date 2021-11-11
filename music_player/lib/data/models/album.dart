import 'package:flutter/material.dart';

class Album {
  String albumName;
  String imageUrl;

  Album({@required this.albumName, @required this.imageUrl});

  factory Album.fromJSON(Map<String, dynamic> map) {
    return Album(albumName: map['albumName'], imageUrl: map['imageUrl']);
  }
}
