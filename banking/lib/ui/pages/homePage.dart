import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import '../../ui/pages/offersTab.dart';
import '../../ui/pages/transactionTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ui/widgets/myBottomNavBar.dart';
import '../../ui/pages/balanceTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget tab;

  @override
  void initState() {
    tab = BalanceTab();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: Color(0xff171721),
        appBar: AppBar(
            backgroundColor: Color(0xff171721),
            elevation: 0,
            leadingWidth: 70,
            leading: Padding(
              padding: EdgeInsets.only(left: 25),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/placeHolder.png'),
              ),
            ),
            title: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: CupertinoTextField(
                placeholder: 'Search',
                placeholderStyle: TextStyle(color: Color(0xff171721)),
                decoration: BoxDecoration(
                    color: Color(0xff20212b),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                    color: Color(0xff6c6976),
                  ))
            ]),
        body: Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 20), child: tab),
        bottomSheet: KeyboardVisibilityBuilder(
          builder: (BuildContext context, bool isVisible) {
            return isVisible
                ? Container(width:0,height:0)
                : MyBottomNavBar(
                    onTap: (int index) {
                      setState(() {
                        if (index == 0)
                          tab = BalanceTab();
                        else if (index == 1)
                          tab = TransactionTab();
                        else if (index == 2) tab = OffersTab();
                      });
                    },
                  );
          },
        ),
      ),
    );
  }
}
