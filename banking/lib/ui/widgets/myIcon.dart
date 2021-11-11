import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final void Function() onTap;

  MyIcon({
    @required this.icon,
    @required this.label,
    @required this.onTap,
    @required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blueAccent : Color(0xff575664),
            size: 30,
          ),
          Text(
            label,
            style: TextStyle(
                color: isSelected ? Colors.blueAccent : Color(0xff575664)),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
