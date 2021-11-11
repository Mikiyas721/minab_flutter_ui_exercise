import 'package:flutter/material.dart';

class ImageText extends StatelessWidget {
  final String text;

  ImageText({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 17)),
      padding: EdgeInsets.only(left: 7, right: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.black54,
      ),
    );
  }
}
