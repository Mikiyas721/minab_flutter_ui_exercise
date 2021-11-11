import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final bool isSelected;
  final String dayOfWeek;
  final int dayOfMonth;

  DateCard(
      {@required this.isSelected,
      @required this.dayOfWeek,
      @required this.dayOfMonth});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: isSelected
          ? [
              Container(
                padding:
                    EdgeInsets.only(top: 22, bottom: 22, left: 17, right: 17),
                margin: EdgeInsets.only(bottom: 12, top: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffffbb6d)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(dayOfMonth.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text(
                      dayOfWeek,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
              CircleAvatar(
                radius: 3,
                backgroundColor: Color(0xffffbb6d),
              )
            ]
          : [
              Container(
                padding:
                    EdgeInsets.only(top: 22, bottom: 22, left: 17, right: 17),
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xfff6f6f6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(dayOfMonth.toString(),
                        style: TextStyle(
                            color: Color(0xff6e6e6e),
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text(
                      dayOfWeek,
                      style: TextStyle(color: Color(0xff6e6e6e), fontSize: 12),
                    )
                  ],
                ),
              )
            ],
    );
  }
}
