import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample_glossiq/salons/custom_widget.dart/back_button.dart';

class SalonsPage extends StatelessWidget {
  const SalonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                color: Colors.grey.shade300),
            child: CupertinoTextField(
              placeholder: 'Search',
              prefix: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: FaIcon(
                  FontAwesomeIcons.search,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
            )),
        actions: [
          CustomBackbutton(
            buttonAction: () {},
            icon: Icons.mail,
          )
        ],
      ),
      body: ListView(children: [
        Container(
          height: 300,
          child: Column(children: [
            ListTile(leading: Text('Salons',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
            trailing: Text('View All',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 14)),)
          ],),
        )
      ],),
    );
  }
}
