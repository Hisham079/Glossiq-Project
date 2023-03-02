import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';

class ProfileUpdatedScreen extends StatelessWidget {
  const ProfileUpdatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 205,
          width: 312,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kHeight15,
              kHeight10,
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      tileMode: TileMode.decal,
                      colors: [Color(0xFFC6C6C6), Color(0xFFBDFF3B)]),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFC6C6C6),
                    // backgroundImage: AssetImage(''),
                    child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/images/logo3.png')),
                  ),
                ),
              ),
              kHeight15,
              Text(
                'Profile Updated!',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'IBM Plex Sans, Bold',
                    fontWeight: FontWeight.w500),
              ),

             
              Container(
                height: 72,
                width: 360,
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                        radius: 1,
                        colors: [Color(0xFFBDFF3B), Colors.white],
                        focal: Alignment.bottomCenter,
                        focalRadius: 0,
                        tileMode: TileMode.clamp)),
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                  fontFamily: 'IBM Plex Sans, Regular',
                  color: grey100,
                  fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
