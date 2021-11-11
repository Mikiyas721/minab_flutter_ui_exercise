import '../../ui/widgets/myIcon.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  final void Function(int index) onTap;

  MyBottomNavBar({@required this.onTap});

  @override
  State<StatefulWidget> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int selectedIndex;

  @override
  void initState() {
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff171721),
      child: Container(
          margin: EdgeInsets.only(bottom: 15, top: 5, right: 25, left: 25),
          padding: EdgeInsets.only(top: 15, bottom: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xff2c2c36)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyIcon(
                icon: Icons.menu,
                label: 'Menu',
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                  widget.onTap(selectedIndex);
                },
                isSelected: selectedIndex == 0 ? true : false,
              ),
              MyIcon(
                icon: Icons.compare_arrows,
                label: 'Payments',
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                  widget.onTap(selectedIndex);
                },
                isSelected: selectedIndex == 1 ? true : false,
              ),
              MyIcon(
                icon: Icons.help,
                label: 'HelpDesk',
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                  widget.onTap(selectedIndex);
                },
                isSelected: selectedIndex == 2 ? true : false,
              ),
              MyIcon(
                icon: Icons.design_services,
                label: 'Services',
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                  widget.onTap(selectedIndex);
                },
                isSelected: selectedIndex == 3 ? true : false,
              ),
            ],
          )),
    );
  }
}
