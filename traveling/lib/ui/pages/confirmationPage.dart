import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/tick.png'),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Payment Success', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30, left: width * 0.05, right: width * 0.05),
                child: Text('Payment has been successfully made, now you can enjoy your vacation',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.black38)),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                padding: EdgeInsets.only(bottom: 17, top: 17, left: width * 0.3, right: width * 0.3),
                child: Text('Back', style: TextStyle(color: Colors.white)),
                color: Color(0xff2879e8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
        ));
  }
}
