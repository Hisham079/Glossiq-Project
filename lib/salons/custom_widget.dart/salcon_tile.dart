import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SalconTile extends StatelessWidget {
  SalconTile({super.key, required this.icon, 
  required this.text,
  required this.color,
  required this.iconColor});
  IconData icon;
  String text;
  Color color;
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: Color(0xFFFFFFFF),
      child: ListTile(
        minLeadingWidth: 1,
        horizontalTitleGap: 5,
        contentPadding: EdgeInsets.only(right: 10,left: 10),
        leading: Icon(icon,color: iconColor,),
        title: Text(
          text,
          style: TextStyle(
            color:color,
              fontSize: 14,
           //   fontFamily: 'IBM Plex Sans,Bold',
              fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.keyboard_arrow_down_rounded,color:color),
      ),
    );
  }
}
