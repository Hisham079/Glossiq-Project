import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';

class TitleWidget extends StatelessWidget {
   TitleWidget({super.key,required this.text});
   String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
                    style: TextStyle(color: textGrey,fontFamily: 'IBM Plex Sans, Regular',fontSize: 14),);
  }
}
class PageNo extends StatelessWidget {
   PageNo({super.key,required this.number});
   String number;

  @override
  Widget build(BuildContext context) {
    return           Text(number,
          style: TextStyle(color: Color(0xFF161616),
          fontSize: 14,fontFamily:'IBM Plex Sans, Bold',fontWeight: FontWeight.bold ),);
;
  }
}