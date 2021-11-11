import 'package:flutter/material.dart';
import '../../ui/pages/homePage.dart';
import '../../ui/widgets/page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OpeningPage extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: PageView(
                  controller: _pageController,
                  children: [
                    MyPage(
                      url: 'assets/person.jpg',
                      title: 'Manage your Tasks',
                      note:
                          'With a time tracker, you can effectively manage your time.',
                    ),
                    MyPage(
                      url: 'assets/person.jpg',
                      title: 'Manage your Tasks',
                      note:
                          'With a time tracker, you can effectively manage your time.',
                    ),
                    MyPage(
                      url: 'assets/person.jpg',
                      title: 'Manage your Tasks',
                      note:
                          'With a time tracker, you can effectively manage your time.',
                    )
                  ],
                )),
          ),
          Positioned(
              left: 20,
              bottom: 100,
              child: SmoothPageIndicator(
                effect: ScrollingDotsEffect(
                    activeDotColor: Color(0xffffbb6b),
                    dotWidth: 10,
                    dotHeight: 10,
                    activeStrokeWidth: 1,
                    activeDotScale: 1.7,
                    spacing: 15),
                count: 3,
                controller: _pageController,
              )),
          Positioned(
              right: 20,
              bottom: 80,
              child: RaisedButton(
                padding: EdgeInsets.only(top: 18, bottom: 18),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return HomePage();
                  }), (route) => false);
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 35,
                  color: Colors.white,
                ),
                color: Color(0xffffbb6b),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ))
        ],
      ),
    );
  }
}
