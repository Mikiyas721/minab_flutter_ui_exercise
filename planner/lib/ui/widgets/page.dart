import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  final String url;
  final String title;
  final String note;

  MyPage({@required this.url, @required this.title, @required this.note});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(url,width: 380,),
        Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Text(
          note,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ],
      mainAxisSize: MainAxisSize.min,
    );
  }
}
