import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ui/customWidgets/myOutlinedButton.dart';
import '../../ui/pages/confirmationPage.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 30, top: 70),
                  decoration: BoxDecoration(
                      color: Color(0xffaed2f7), borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              )
            ],
          ),
          toolbarHeight: 100),
      body: Padding(
          padding: EdgeInsets.only(left: 30),
          child: ListView(
            children: [
              Text(
                'Pay Your Order',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                '\nChoose the provider and make a payment',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  'Payment Method',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 20),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyOutlinedButton(
                    icon: Icons.remove_red_eye,
                    text: 'Bank Card',
                    onPressed: () {},
                  ),
                  Padding(
                    child: MyOutlinedButton(
                      icon: Icons.payment,
                      text: 'Paypal',
                      onPressed: () {},
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15),
                  ),
                  MyOutlinedButton(
                    icon: Icons.g_translate,
                    text: 'Google Pay',
                    onPressed: () {},
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  'Payment Details',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoTextField(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xfff3f3f3), borderRadius: BorderRadius.all(Radius.circular(7))),
                      prefix: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.person,
                            color: Colors.grey,
                          )),
                      placeholder: 'Cardholder Name',
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 10),
                        child: CupertinoTextField(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(0xfff3f3f3), borderRadius: BorderRadius.all(Radius.circular(7))),
                          prefix: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.grey,
                            ),
                          ),
                          placeholder: 'Card Number',
                        )),
                    Row(
                      children: [
                        Container(
                          width: width * 0.4,
                          child: CupertinoTextField(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Color(0xfff3f3f3), borderRadius: BorderRadius.all(Radius.circular(7))),
                            placeholder: 'Date',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            width: width * 0.4,
                            child: CupertinoTextField(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Color(0xfff3f3f3),
                                  borderRadius: BorderRadius.all(Radius.circular(7))),
                              placeholder: 'CVV',
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),child: Text(
                      'You have to pay',
                      style: TextStyle(color: Colors.black38),
                    ),),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 30),
                      child: Text(
                        '\$700',
                        style: TextStyle(color: Color(0xfff5d06f), fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return ConfirmationPage();
                        }));
                      },
                      color: Color(0xff2879e8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          bottom: 17,
                          top: 17,
                          left: MediaQuery.of(context).size.width * 0.35,
                          right: MediaQuery.of(context).size.width * 0.35),
                      child: Text(
                        'Pay Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
