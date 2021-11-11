import 'package:flutter/material.dart';
import '../../ui/widgets/myIcon.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  final IconData icon;
  final String text;
  final void Function() onTap;

  MyCard(
      {@required this.color,
      @required this.backgroundColor,
      @required this.icon,
      @required this.text,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.only(top: 25),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            MyIcon(
              backgroundColor: backgroundColor,
              color: color,
              icon: icon,
              margin: EdgeInsets.only(top: 18, bottom: 18, right: 10, left: 10),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
