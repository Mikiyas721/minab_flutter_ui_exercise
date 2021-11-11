import 'package:flutter/material.dart';

class ColoredProgressBar extends StatelessWidget {
  final double firstValue;
  final double secondValue;
  final double thirdValue;

  ColoredProgressBar({
    @required this.firstValue,
    @required this.secondValue,
    @required this.thirdValue,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 71;
    return Row(
      children: [
        Container(
          width: width * firstValue,
          margin: EdgeInsets.only(bottom: 10, top: 15),
          height: 15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15)),
              color: Color(0xffe31e63)),
        ),
        Container(
          width: width * secondValue,
          margin: EdgeInsets.only(bottom: 10, top: 15),
          height: 15,
          color: Color(0xfffcfc0d),
        ),
        Container(
            width: width * thirdValue,
            margin: EdgeInsets.only(bottom: 10, top: 15),
            height: 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Color(0xff26ad18)))
      ],
    );
  }
}
