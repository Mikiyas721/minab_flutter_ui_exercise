import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget{
  final String title;
  final String subTitle;
  VerticalText({@required this.title, @required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          subTitle,
          style: TextStyle(color: Color(0xffd02162)),
        )
      ],
    );
  }

}