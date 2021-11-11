import 'dart:ui';

import '../../ui/widgets/transactionCard.dart';
import '../../ui/widgets/coloredProgressBar.dart';
import 'package:flutter/material.dart';

class TransactionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your Card',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  color: Color(0xffe91c61),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  border: Border.all(color: Color(0xffffffff), width: 1)),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0.8, 0.8),
                    child: Text(
                      'VISA',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Positioned.fill(
                child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(color: Colors.black.withOpacity(0)),
            ))
          ],
        ),
        LinearProgressIndicator(
          value: 0.45,
          backgroundColor: Color(0xff2e2f39),
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xff94949e)),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Color(0x22ffffff), width: 0.1),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff181822), Color(0xff20202a)])),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'December Spending',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '\$ 2,583.80 ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white,
                  ),
                ],
              ),
              ColoredProgressBar(
                  firstValue: 0.7, secondValue: 0.1, thirdValue: 0.2)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Recent Transaction',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TransactionCard(
                imageUrl: 'assets/1.png',
                title: 'Metro St.Petersburg',
                subTitle: 'Transport',
                amount: '- \$ 12.80'),
            TransactionCard(
                imageUrl: 'assets/2.jpg',
                title: 'KFC',
                subTitle: 'Fast Food',
                amount: '- \$ 20.80')
          ],
        )
      ],
    );
  }
}
