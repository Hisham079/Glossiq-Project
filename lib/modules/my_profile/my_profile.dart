import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/my_profile/local_widget/custom_tile.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/back_button.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    kHeight15,
                    kHeight10,
                    GestureDetector(
                      onTap: () {
                         showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.white),
                height: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Divider(thickness: 2,
                    endIndent: 180,
                    indent: 180,),
                    
                  
                    CustomTile(text: 'Edit Profile Picture',trailing:CustomBackbutton(
            buttonAction: () {
              Navigator.pop(context);
            },
            icon: Icons.close,
          ),),
          CustomTileIcon(iconData: Icons.edit, text: 'Edit Current Picture'),
          CustomTileIcon(iconData: Icons.file_upload_outlined,
          subTitle: Text('JPEG,PNG or GIF(max 4MB)'),
           text: 'Upload New Picture')
                  ],
                ),
              );
            },
          );
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/barbershop.jpg'),
                      ),
                    ),
                    kHeight15,
                    Text(
                      'John Smith',
                      style: TextStyle(
                          color: grey100,
                          fontSize: 24,
                          fontFamily: 'Plex Sans, Bold',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              kHeight,
              ProfilePageTitle(text: 'MY PROFILES'),
              Divider(
                thickness: 1,
                color: Color(0xFFF4F4F4),
              ),
              CustomTileImage(
                text: 'Barbershop Lorem',
                image: 'assets/images/barbershop.jpg',
              ),
              CustomTileImage(
                text: 'Moda Mondi',
                image: 'assets/images/barbershop.jpg',
              ),
              ProfilePageTitle(text: 'ACCOUNT'),
              CustomTileIcon(
                  iconData: Icons.notifications_none, text: 'Notification'),
              CustomTileIcon(iconData: Icons.person_2_outlined, text: 'Personal'),
              CustomTileIcon(
                  iconData: Icons.location_on_outlined, text: 'My Address'),
              CustomTileIcon(
                  iconData: Icons.home_work_outlined, text: 'My Salons'),
                  kHeight15,
              ProfilePageTitle(text: 'INFO'),
              kHeight10,
             CustomTile(text: 'Support',),
             CustomTile(text: 'Terms of Use',),
             CustomTile(text: 'Privacy Policy',),
             CustomTile(text: 'Log Out',),

            ],
          ),
        ),
      ),
    );
  }
}
class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


