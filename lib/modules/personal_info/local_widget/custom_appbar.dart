import 'package:flutter/material.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/back_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          // we can set width here with conditions
         // width: 400,
          height: kToolbarHeight,
          child:ListTile(
            leading: Text('Personal Info',style:pageHead2.copyWith() ,),
            
            trailing: Padding(
            padding: const EdgeInsets.only(left: 5, top: 5,bottom: 5),
            child: CustomBackbutton(
              buttonAction: () {
                Navigator.pop(context);
              },
              icon: Icons.close,
            ),
          ), ),
        ),
      ),
    );
  }

  ///width doesnt matter
  @override
  Size get preferredSize => Size(200, kToolbarHeight);
}