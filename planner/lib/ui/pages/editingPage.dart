import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ui/widgets/myCard.dart';
import '../../ui/widgets/myIcon.dart';

class EditingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Color(0xfffbfbfb),
        title: Text(
          'Edit',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 100,
        leadingWidth: 80,
      ),
      body: Stack(
        children: [
          Positioned(
              left: 15,
              right: 15,
              top: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: TextEditingController(
                        text: 'Meeting up with PR Department'),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 20, bottom: 20, left: 10),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.edit,
                          color: Color(0xffe3e3e3),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      readOnly: true,
                      controller:
                          TextEditingController(text: 'Monday, 12 November'),
                      onTap: () async {
                        DateTime selected = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1998),
                            lastDate: DateTime(2100));
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 25),
                          prefixIcon: MyIcon(
                              backgroundColor: Color(0xffffebe9),
                              color: Color(0xffcc7662),
                              icon: Icons.calendar_today),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.edit,
                              color: Color(0xffe3e3e3),
                            ),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: TextField(
                          controller: TextEditingController(text: '8 AM'),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 25),
                            prefixIcon: MyIcon(
                                backgroundColor: Color(0xfffdf3e1),
                                color: Color(0xffeac25b),
                                icon: Icons.access_time),
                          ),
                          readOnly: true,
                          onTap: () async {
                            TimeOfDay selectedTime = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
                            print(selectedTime);
                          },
                        ),
                        width: 150,
                      ),
                      Text(
                        '-',
                        style: TextStyle(fontSize: 35),
                      ),
                      SizedBox(
                        child: TextField(
                          controller: TextEditingController(text: '10 AM'),
                          decoration: InputDecoration(
                              prefixIcon: MyIcon(
                                  backgroundColor: Color(0xfffdf3e1),
                                  color: Color(0xffeac25b),
                                  icon: Icons.access_time),
                              contentPadding: EdgeInsets.only(top: 25)),
                          readOnly: true,
                          onTap: () async {
                            TimeOfDay selectedTime = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
                            print(selectedTime);
                          },
                        ),
                        width: 150,
                      )
                    ],
                  ),
                  MyCard(
                      color: Color(0xffc692fe),
                      backgroundColor: Color(0xffefeafa),
                      icon: Icons.shopping_bag_outlined,
                      text: 'Work',
                      onTap: () {}),
                  MyCard(
                      color: Color(0xff86cbd7),
                      backgroundColor: Color(0xffdbf1f8),
                      icon: Icons.alarm,
                      text: 'Reminder',
                      onTap: () {}),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25, top: 25),
                    child: Text(
                      'Participants',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar1.png'),
                        radius: 30,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar2.png'),
                        radius: 30,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar3.png'),
                        radius: 30,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar4.jpeg'),
                        radius: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Color(0xfffff6e5),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xffffc1a5),
                        ),
                      )
                    ],
                  )
                ],
              )),
          Positioned(
            left: 15,
            right: 15,
            bottom: 10,
            child: RaisedButton(
                padding: EdgeInsets.only(top: 18, bottom: 18),
                elevation: 0,
                onPressed: () {},
                color: Color(0xffffbb6b),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
