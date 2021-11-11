import 'package:flutter/material.dart';
import '../../ui/widgets/matched.dart';
import '../../ui/widgets/friends.dart';
import '../../ui/widgets/myButton.dart';

class JobDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JobDetailsPageState();
}

class _JobDetailsPageState extends State<JobDetailsPage> {
  bool isClicked;

  @override
  void initState() {
    isClicked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget main = SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.63,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/dog.jpg'), fit: BoxFit.cover)),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment(-1, -0.8),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xff163943).withOpacity(0.7)),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Color(0xffbfe3f2),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Friends(),
                      MyButton(
                        onTap: () {},
                        color: Color(0xff08c86c),
                        child: Text(
                          '93%',
                          style: TextStyle(color: Colors.white),
                        ),
                        label: '+4 Positions',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(color: Color(0xff3c434d).withOpacity(0.97)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Microsoft',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                  Text(
                    "\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('\nDescription',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Text(
                    "\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('\nDescription',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Text(
                    "\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 90,
                  )
                ],
              ))
        ],
      ),
    );
    Widget bottom = Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 100,
        color: Color(0xff1f1f1f),
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyButton(
                color: Color(0xffea1736),
                child: Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
                onTap: () {}),
            MyButton(
                color: Color(0xff058fd4),
                child: Icon(
                  Icons.help,
                  color: Colors.white,
                ),
                onTap: () {}),
            MyButton(
                color: Color(0xff08c86c),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                onTap: () {
                  setState(() {
                    isClicked = true;
                  });
                }),
          ],
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Stack(
          children: isClicked
              ? [
                  main,
                  bottom,
                  Matched(
                    onCancel: () {
                      setState(() {
                        isClicked = false;
                      });
                    },
                  )
                ]
              : [main, bottom]),
    );
  }
}
