import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color iconColor;

  MyIconButton(
      {@required this.label, @required this.icon, @required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0x22ffffff), width: 0.1),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff161620), Color(0xff20212a)]),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Icon(
            icon,
            color: iconColor,
            size: 40,
          ),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
