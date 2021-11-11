import 'package:flutter/material.dart';
import 'package:linkedinmatching/ui/pages/jobDetailsPage.dart';
import '../../ui/widgets/myButton.dart';
import '../../ui/widgets/friends.dart';

class JobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
          return JobDetailsPage();
        }));
      },
      child: Container(
        height: 600,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/eye.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.85, -1),
              child: Friends(),
            ),
            Align(
              alignment: Alignment(0.85, 1),
              child: MyButton(
                onTap: () {},
                color: Color(0xff08c86c),
                child: Text(
                  '93%',
                  style: TextStyle(color: Colors.white),
                ),
                label: '+4 Positions',
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xaa313136).withOpacity(0.75),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Microsoft',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                    Expanded(
                        child: Text(
                      "\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
