import '../../data/model/location.dart';
import 'package:flutter/material.dart';

class TripSchedule extends StatelessWidget {
  final Location location;

  TripSchedule({
    @required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: 250,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 120,
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              image: DecorationImage(image: AssetImage(location.url), fit: BoxFit.cover)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(location.location
                .split(',')[0], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  '',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  location.location,
                  style: TextStyle(color: Colors.blueGrey),
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
