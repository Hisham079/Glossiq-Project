import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custom_appbar.dart';
import 'package:sample_glossiq/modules/personal_info/models/bottom_nav_model.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/back_button.dart';

import 'pages/page_one.dart';
import 'pages/page_two.dart';

class PersonalInfo extends StatelessWidget {
   PersonalInfo({super.key});
   List<BottomNavModel>bottomNavList=[
    BottomNavModel(key: 0,value: 'Hair type'),
    BottomNavModel(key: 1,value: 'Hair Length'),
    BottomNavModel(key: 2,value: 'Hair Color'),
    BottomNavModel(key: 3,value: 'Scalp Condition'),
    BottomNavModel(key: 4,value: 'Hair Problem'),
    BottomNavModel(key: 5,value: 'Skin'),
    BottomNavModel(key: 6,value: 'Eyes'),
    BottomNavModel(key: 7,value: 'Nails'),
  
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: PageView(
        children: [
          PageOne(),
          PageTwo(),
          Text('3'),
        ],
      ),
      bottomNavigationBar:Container(
        height: 80,
        decoration: BoxDecoration(color:  Colors.black),
        
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bottomNavList.length,
        itemBuilder: (context, index) {
        return Text(
          
          bottomNavList[index].toString(),
          style: TextStyle(color: Colors.white),);
      },))
    );
  }
}
