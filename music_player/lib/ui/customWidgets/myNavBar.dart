import 'package:flutter/material.dart';

import 'namedIcon.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(right: 35, left: 35, top: 15),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NamedIcon(icon: Icons.home, label: 'Home'),
          NamedIcon(icon: Icons.search, label: 'Browse'),
          NamedIcon(icon: Icons.keyboard_voice, label: 'Mixes'),
          NamedIcon(icon: Icons.queue_music_rounded, label: 'Library'),
        ],
      ),
    );
  }
}
