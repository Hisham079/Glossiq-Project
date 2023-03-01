import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/profile_settings/local_widget/primery_field.dart';
import 'package:sample_glossiq/modules/profile_settings/local_widget/text_field_widget.dart';
import 'package:sample_glossiq/modules/profile_settings/model/drop_down_model.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/back_button.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: CustomBackbutton(
            buttonAction: () {
              Navigator.pop(context);
            },
            icon: Icons.arrow_back,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Profile Settings',
                style: TextStyle(
                    // letterSpacing: 32,
      
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF161616),
                    fontFamily: 'IBM Plex Sans, Regular'),
              ),
              kHeight15,
              const SizedBox(
                width: 336,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'IBM Plex Sans, Regular',
                      color: Color(0xFF161616)),
                ),
              ),
              kHeight,
              TextFieldWidget(labelText: 'Name', initialValue: 'John'),
              kMinHeight,
              TextFieldWidget(labelText: 'Surename', initialValue: 'Smith'),
              kMinHeight,
              PrimeryFieldDropDown(
                  labelText: 'Birthday', initialValue: '08 /11/1987'),
              kHeight,
              PrimeryFieldDropDown(labelText: 'Gender', initialValue: 'Male'),
              kHeight,
              Row(
                children: [
                  Flexible(
                      flex: 3,
                      child: Container(
                        height: 77,
                        padding: const EdgeInsets.only(
                            top: 15, left: 10, right: 8, bottom: 7),
                        decoration: const BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            elevation: 16,
                            style: headStyleNormal.copyWith(
                                color: Color(0xFF161616),
                              //  fontWeight: FontWeight.bold,
                                fontSize: 16),
                            hint: Text("Prefix"),
                            items: [
                              DropdownMenuItem<DropDownModel>(
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: Column(
                                      //  mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                'Prefix',
                                                style:TextStyle(fontSize: 12,color: textGrey),
                                              )),
                                          TextFormField(
                                            enabled: false,
                                            style: headStyleNormal.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: fieldTextGrey,
                                                fontSize: 11),
                                            cursorColor: Colors.blueGrey,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              contentPadding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 5, 0, 0),
                                              label: Container(
                                               // height: 40,
                                                child: Row(
                                                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: const [
                                                    CircleAvatar(
                                                      backgroundColor: Colors.blue,
                                                      radius: 15,
                                                      backgroundImage: AssetImage(
                                                          "assets/images/angola.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Text("+386",style: TextStyle(color: Color(0xFF161616),fontSize: 16,fontFamily: 'IBM Plex Sans, Medium'),)
                                                  ],
                                                ),
                                              ),
                                              labelStyle: const TextStyle(
                                                  color: Color(0xFFbdbcbc),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              fillColor: const Color(0xFFF4F4F4),
                                              filled: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // const Icon(
                                    //   Icons.expand_more,
                                    //   color: Colors.grey,
                                    // )
                                  ],
                                ),
                               
                              )
                            ],
                            onChanged: (value) {
                             
                            },
                          ),
                        ),
                      )),
                  smMinWidth,
                  Flexible(
                    flex: 3,
                    child: PrimeryField(
                      initialValue: '40789653',
                      labelText: 'Phone Number',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 18),
                elevation: 0,
                backgroundColor: const Color(0xFFBDFF3B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text('Done',
                  style: headStyleNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'ibmPlexMedium')))),
    );
  }
}
