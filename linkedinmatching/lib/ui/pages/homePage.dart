import 'package:flutter/material.dart';
import '../../ui/widgets/jobCard.dart';
import '../../ui/widgets/categoryIcon.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0c0e),
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryIcon(
                    imageUrl: 'assets/clock.png', label: 'New', onTap: () {}),
                CategoryIcon(
                    imageUrl: 'assets/dog.jpg', label: 'Popular', onTap: () {}),
                CategoryIcon(
                    imageUrl: 'assets/eye.jpg', label: 'X Match', onTap: () {}),
                CategoryIcon(
                    imageUrl: 'assets/tree.jpg', label: 'Nearby', onTap: () {}),
              ],
            ),
            SizedBox(height: 20),
            ListView.builder(
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return JobCard();
                })
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(Icons.home_outlined),
              ),
              label: '',
              backgroundColor: Color(0xff1a1a1a)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
              backgroundColor: Color(0xff1a1a1a)),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: '',
              backgroundColor: Color(0xff1a1a1a)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
              backgroundColor: Color(0xff1a1a1a)),
        ],
        backgroundColor: Color(0xff1a1a1a),
        type: BottomNavigationBarType.shifting,
        onTap: (int index) {},
      ),
    );
  }
}
