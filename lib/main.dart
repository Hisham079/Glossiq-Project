import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_glossiq/modules/allCatogories/all_categories.dart';
import 'package:sample_glossiq/modules/demo.dart';
import 'package:sample_glossiq/modules/my_profile/my_profile.dart';
import 'package:sample_glossiq/modules/personal_info/personal_info.dart';
import 'package:sample_glossiq/modules/profile_settings/profile_settings.dart';
import 'package:sample_glossiq/modules/salons/salons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
        
      ),
      home:HomePage(title: ''),
    );
  }
}

