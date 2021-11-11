import 'package:flutter/material.dart';

class Location {
  final int stars;
  final String url;
  final String location;
  final String placeName;
  final int cost;
  final String days;

  Location({@required this.stars,
    @required this.url,
    @required this.location,
    @required this.placeName,
    @required this.cost,
    @required this.days});

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(stars: map['stars'],
        url: map['url'],
        location: map['location'],
        placeName: map['placeName'],
        cost: map['cost'],
        days: map['days']);
  }
}
