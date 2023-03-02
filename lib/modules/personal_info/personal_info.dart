import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custom_appbar.dart';
import 'package:sample_glossiq/modules/personal_info/models/bottom_nav_model.dart';
import 'package:sample_glossiq/modules/personal_info/pages/page_eight.dart';
import 'package:sample_glossiq/modules/personal_info/pages/page_five.dart';
import 'package:sample_glossiq/modules/personal_info/pages/page_four.dart';
import 'package:sample_glossiq/modules/personal_info/pages/page_seven.dart';
import 'package:sample_glossiq/modules/personal_info/pages/page_six.dart';
import 'package:sample_glossiq/modules/personal_info/pages/page_three.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/back_button.dart';

import 'pages/page_one.dart';
import 'pages/page_two.dart';

class PersonalInfo extends StatefulWidget {
   PersonalInfo({super.key});
   PageController? controller;

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}


class _PersonalInfoState extends State<PersonalInfo> {
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
  void initState() {
    // TODO: implement initState
    super.initState();
   // widget.controller=bo
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: PageView(
        //controller:bottomNavList. ,
        children: [
          PageOne(),
          PageTwo(),
         PageThree(),
         PageFour(),
         PageFive(),
         PageSix(),
         PageSeven(),
         PageEight(),
        ],
      ),
      bottomNavigationBar:Container(
        height: 150,
        decoration: BoxDecoration(color: Color(0xFF272727)),
        
      child: Column(
        children: [
          kHeight15,
          kHeight10,
          Expanded(
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bottomNavList.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 40,right: 10),
                  child: Text(
                    
                    bottomNavList[index].value.toString(),
                    style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'IBM Plex Sans, Medium',fontWeight: FontWeight.w500),),
                );
              },),
            ),
          ),
          kHeight,

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Skip',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'IBM Plex Sans, Bold',fontWeight: FontWeight.bold),),
                kWidth30,
                ElevatedButton(
                  style:  ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                  elevation: 0,
                  backgroundColor: const Color(0xFFBDFF3B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                  onPressed: () {
                  
                }, child: Text('Next',style: TextStyle(color:grey100,fontSize: 16,fontFamily:'IBM Plex Sans, Bold' ,fontWeight: FontWeight.bold),))
              ],
            ),
          )
        ],
      ))
    );
  }
}
