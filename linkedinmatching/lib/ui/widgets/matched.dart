import 'package:flutter/material.dart';

class Matched extends StatelessWidget {
  final void Function() onCancel;
  Matched({this.onCancel});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff1f1f1f).withOpacity(0.8),
        child: Stack(
          children: [
            Align(
                alignment: Alignment(0.85,-0.9),
                child: GestureDetector(
                  onTap: onCancel,
                  child: Icon(
                    Icons.cancel,
                    size: 50,
                    color: Color(0xff142428),
                  ),
                )),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/tree.jpg'),
                            radius: 40,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/dog.jpg'),
                            radius: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "It's a Match",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35)),
                      TextSpan(
                          text: "\nLet's move forward",
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      margin: EdgeInsets.only(top: 40, bottom: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 50, right: 50),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff0e85eb), Color(0xff39cfc4)]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          'Schedule a meeting',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.resolveWith<OutlinedBorder>(
                                (_) {
                          return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10));
                        }),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 60, right: 60),
                        child: Text(
                          'Maybe later',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
