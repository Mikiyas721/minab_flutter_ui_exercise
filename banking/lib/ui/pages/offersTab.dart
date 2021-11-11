import '../../ui/widgets/productCard.dart';
import '../../ui/widgets/verticalText.dart';
import 'package:flutter/material.dart';

class OffersTab extends StatelessWidget {
  final list = [
    'Digital Card',
    'Credit Card',
    'Master Card',
    'Digital Card',
    'Credit Card',
    'Master Card',
  ];

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: ScrollController(),
      child: ListView(
        children: [
          Text(
            'Individual Offers',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
          ),
          Container(
              margin: EdgeInsets.only(top: 25, bottom: 20),
              height: MediaQuery.of(context).size.height * 0.23,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color(0xff2c2c36)),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Cash loan \napproved for you',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Get a loan in one tap',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        VerticalText(
                          title: 'Amount:',
                          subTitle: '\$ 300,000',
                        ),
                        VerticalText(
                          title: 'Loan rate:',
                          subTitle: '0.3%',
                        ),
                        VerticalText(
                          title: 'Time:',
                          subTitle: '48 months',
                        ),
                      ],
                    ),
                  )
                ],
              )),
          Align(
            alignment: Alignment(-1, -0.05),
            child: LinearProgressIndicator(
              value: 0.3,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xffa1a1ab)),
              backgroundColor: Color(0xff2e2f39),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 15),
            child: Text(
              'Products',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: list
                    .map((String label) =>
                        ProductCard(icon: Icons.credit_card, label: label))
                    .toList()),
          )
        ],
      ),
    );
  }
}
