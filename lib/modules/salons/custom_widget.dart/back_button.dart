import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBackbutton extends StatelessWidget {
   CustomBackbutton({super.key,required this.buttonAction,required this.icon});
  final void Function() buttonAction;
  IconData icon;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonAction,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(60)),
            border: Border.all(color: Colors.grey)
        ),
        child: Icon(icon,color: Colors.black,),
      ),
    );
  }
}