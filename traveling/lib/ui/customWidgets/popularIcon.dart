import 'package:flutter/material.dart';

class PopularIcon extends StatelessWidget {
  final IconData icon;
  final String title;

  PopularIcon({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 10, top: 10),
          decoration:
              BoxDecoration(color: Color(0xfff0f0ff), borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: Icon(
              icon,
              size: 27,
              color: Color(0xFF599eef),
            ),
          ),
        ),
        Text(title,
            style: TextStyle(
              color: Color(0xFFdbdbdb),
            ))
      ],
    );
  }
}
