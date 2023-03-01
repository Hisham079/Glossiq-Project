import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SalonTile extends StatelessWidget {
  SalonTile({super.key, required this.icon, 
  required this.text,
  required this.color,
  required this.iconColor,
  required this.children});
  IconData icon;
  String text;
  Color color;
  List<Widget> children = const <Widget>[];
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
    
     tilePadding: EdgeInsets.only(right: 10,left: 15),
     
      leading: Icon(icon,color: iconColor,),
      title: Text(
        text,
        style: TextStyle(
          color:color,
            fontSize: 14,
           fontFamily: 'IBM Plex Sans,Bold',
            fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.keyboard_arrow_down_rounded,color:Color(0xFF8D8D8D)),
      children:children,
    );
  }
}
