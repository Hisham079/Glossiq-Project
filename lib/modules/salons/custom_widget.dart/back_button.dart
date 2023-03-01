import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBackbutton extends StatelessWidget {
   CustomBackbutton({super.key,required this.buttonAction,required this.icon});
  final void Function() buttonAction;
  IconData icon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: buttonAction,
        child: Container(
          height: 35,
          width: 31,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(60)),
              border: Border.all(color: Colors.grey)
          ),
          child: Icon(icon,color: Colors.black,),
        ),
      ),
    );
  }
}