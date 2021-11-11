import '../../data/model/location.dart';
import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final Location location;

  TripCard(
      {@required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Color(0xfff0f0ff), borderRadius: BorderRadius.all(Radius.circular(15))),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(top: 15, bottom: 15, left: 0, right: 15),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(location.url), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${location.placeName}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.location_on,
                      color: Color(0xFFdbdbdb),
                    ),
                  ),
                  Text(
                    '$location',
                    style: TextStyle(color: Color(0xFFdbdbdb)),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 30)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffb0b0ff), borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Text('\$ ${location.cost}', style: TextStyle(color: Colors.blue),),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '${location.stars.toString()} ',
                    style: TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    '  ${location.days}',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
