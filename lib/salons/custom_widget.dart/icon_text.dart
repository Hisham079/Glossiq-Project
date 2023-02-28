import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconTextWidget extends StatelessWidget {
  IconTextWidget({super.key, required this.icon,
  required this.color,
   required this.text,
    this.decoration});
  IconData icon;
  String text;
  TextDecoration? decoration;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,
        size: 20,
        color: color),
        SizedBox(
          width: 5,
        ),
        Text(text,style: TextStyle(decoration: decoration,
        fontSize: 12,color: Color(0xFF6F6F6F),
        fontFamily: 'IBM Plex Sans'),),
        SizedBox(height: 10,)
      ],
    );
  }
}
