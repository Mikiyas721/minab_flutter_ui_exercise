import 'package:flutter/material.dart';

class BalanceMenu extends StatelessWidget {
  final String title;
  final String subTitle;

  BalanceMenu({
    @required this.title,
    @required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Color(0x22ffffff),width: 0.1),
          gradient:
              LinearGradient(  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,colors: [Color(0xff181822), Color(0xff20202a)])),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
    );
  }
}
