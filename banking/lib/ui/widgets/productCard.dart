import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final IconData icon;
  final String label;

  ProductCard({
    @required this.icon,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 300,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0x55ffffff), width: 0.1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              colors: [Color(0xff181822), Color(0xff20202a)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              icon,
              color: Color(0xffd02162),
              size: 70,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
