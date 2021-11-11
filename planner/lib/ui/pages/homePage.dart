import 'package:flutter/material.dart';
import '../../ui/widgets/dateCard.dart';
import '../../ui/widgets/taskCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedDate = "November";
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 25, left: 25, top: 60),
        child: Stack(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '$selectedDate ${selectedPage+10}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.85),
            child: SizedBox(
              height: 170,
              child: PageView.builder(
                controller:
                    PageController(initialPage: 0, viewportFraction: 0.22),
                scrollDirection: Axis.horizontal,
                onPageChanged: (int index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Transform.scale(
                      scale: index == selectedPage ? 1.2 : 1,
                      child: DateCard(
                          isSelected: index == selectedPage ? true : false,
                          dayOfWeek: 'Tue',
                          dayOfMonth: index + 10));
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.4),
            child: SizedBox(height: 500,child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return TaskCard(
                      backgroundColor: Color(0xfff2dffd),
                      iconColor: Color(0xffaa8ebc),
                      taskTitle: 'Meeting With PR Department',
                      startTime: '8 AM',
                      endTime: '10 AM');
                }),),
          )
        ]),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.all(10),
        child: RaisedButton(
            padding:
                EdgeInsets.only(top: 18, bottom: 18, left: 120, right: 120),
            elevation: 0,
            onPressed: () {},
            color: Color(0xffffbb6b),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              '+ Add new task',
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
    );
  }
}
