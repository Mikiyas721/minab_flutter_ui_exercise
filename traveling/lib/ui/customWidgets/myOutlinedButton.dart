import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onPressed;

  MyOutlinedButton({@required this.icon, @required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlineButton.icon(
      onPressed: onPressed,
      highlightColor: Color(0xffaad2ff),
      borderSide: BorderSide(color: Color(0xffaed2f7)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 5, right: 5),
      icon: Icon(icon,color: Color(0xffaad2ff),),
      label: Text(
        text,
        style: TextStyle(color: Color(0xffaed2f7)),
      ),
    );
  }
}
