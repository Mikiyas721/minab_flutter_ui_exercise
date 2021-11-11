import '../../ui/widgets/balanceMenu.dart';
import '../../ui/widgets/myIconButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalanceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Your Balance',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            )),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          margin: EdgeInsets.only(top: 25, bottom: 25),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color(0xff2b2c34),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'December 19, 2020',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color(0xff232530)),
                  child: Icon(
                    Icons.info_outline,
                    color: Color(0xff1d9414),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    '\$ 10,082.39',
                    style: TextStyle(
                        color: Color(0xffd02162),
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Received cash back \$ 20.83',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyIconButton(
                label: 'Send',
                icon: Icons.arrow_upward_sharp,
                iconColor: Color(0xffd02162)),
            MyIconButton(
                label: 'Receive',
                icon: Icons.arrow_downward_sharp,
                iconColor: Color(0xff1d9414)),
            MyIconButton(
                label: 'Add', icon: Icons.add, iconColor: Color(0xff1d9414)),
            MyIconButton(
                label: 'Link',
                icon: Icons.link_rounded,
                iconColor: Color(0xffd02162)),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 25)),
        BalanceMenu(title: 'Savings', subTitle: 'Account savings'),
        BalanceMenu(title: 'Credits', subTitle: 'Your credits'),
        BalanceMenu(title: 'Templates', subTitle: 'Payments templates'),
      ],
    );
  }
}
