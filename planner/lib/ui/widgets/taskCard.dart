import 'dart:ui';
import 'package:flutter/material.dart';
import '../../ui/pages/editingPage.dart';

class TaskCard extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final String taskTitle;
  final String startTime;
  final String endTime;

  TaskCard(
      {@required this.backgroundColor,
      @required this.iconColor,
      @required this.taskTitle,
      @required this.startTime,
      @required this.endTime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 12),
              child: Text(
                taskTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Divider(),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: iconColor,
                ),
                Text(' $startTime - $endTime'),
                Spacer(),
                SizedBox(
                  width: 80,
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/avatar4.jpeg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/avatar2.png'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Text(
                          '+5',
                          style: TextStyle(color: iconColor),
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return EditingPage();
        }));
      },
    );
  }
}
