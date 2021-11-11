import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String amount;

  TransactionCard({
    @required this.imageUrl,
    @required this.title,
    @required this.subTitle,
    @required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Color(0x22ffffff), width: 0.1),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff181822), Color(0xff20202a)])),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        trailing: Text(
          amount,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
