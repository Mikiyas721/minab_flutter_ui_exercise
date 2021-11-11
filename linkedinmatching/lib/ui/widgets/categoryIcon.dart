import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final imageUrl;
  final void Function() onTap;
  final String label;

  CategoryIcon(
      {@required this.onTap, @required this.label, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imageUrl),
            ),
          ),
          Text(
            label,
            style: TextStyle(color: Color(0xff4c4c4d)),
          )
        ],
      ),
    );
  }
}
