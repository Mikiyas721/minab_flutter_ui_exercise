import '../../data/model/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ui/pages/paymentPage.dart';
import '../../ui/customWidgets/tripSchedule.dart';

class TripPage extends StatelessWidget {
  final Location location;
  TripPage({@required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Stack(children: [
          Container(
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(location.url), fit: BoxFit.cover)),
            child: Stack(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 45),
                  child: Container(
                    child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Color(0xff939599)),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    decoration:
                        BoxDecoration(color: Color(0xaaf2f3f8), borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color(0xffebf3fd),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25, top: 20, bottom: 5),
                  child: Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Lalibela', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                          Padding(
                            padding: EdgeInsets.only(top: 1, bottom: 10),
                            child: Text('Ethiopia',
                                style: TextStyle(
                                  color: Color(0xffbec2cb),
                                )),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: Icon(Icons.arrow_forward, size: 35, color: Color(0xff6193d8)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(location.location.split(',')[0], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                          Padding(
                              padding: EdgeInsets.only(top: 1, bottom: 10),
                              child: Text(location.location.split(',')[1],
                                  style: TextStyle(
                                    color: Color(0xffbec2cb),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ]),
        toolbarHeight: 350,
      ),
      body: CupertinoScrollbar(
        isAlwaysShown: true,
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.only(left: 25, bottom: 70),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  'Time Duration',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '4 days and 3 nights',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 10),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    '07 - 11 Jun, 2020',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  'Trip Schedule',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              TripSchedule(location: location,),
              TripSchedule(location: location,)
            ],
          ),
        ),
      ),
      bottomSheet: Card(
          margin: EdgeInsets.all(0),
          child: Padding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                    color: Color(0xff2a78e8),
                    child: Text(
                      'Get Pay',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return PaymentPage();
                      }));
                    })
              ],
            ),
            padding: EdgeInsets.all(10),
          )),
    );
  }
}
