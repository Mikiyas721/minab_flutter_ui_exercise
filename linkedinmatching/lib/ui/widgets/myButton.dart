import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final void Function() onTap;
  final String label;

  MyButton(
      {@required this.color,
      @required this.child,
      @required this.onTap,
      this.label});

  @override
  Widget build(BuildContext context) {
    Widget card = InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        elevation: 5,
        margin: EdgeInsets.only(bottom: 10, top: 10),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.white, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(child: child),
        ),
      ),
    );
    return label == null
        ? card
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              card,
              Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          );
  }
}
