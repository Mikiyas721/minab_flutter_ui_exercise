import 'package:flutter/material.dart';

class NamedIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  NamedIcon({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Icon(
              icon,
              color: Color(0xff7a7a7a),
            ),
            Text(
              label,
              style: TextStyle(color: Color(0xff7a7a7a), fontSize: 15),
            )
          ],
        ));
  }
}
