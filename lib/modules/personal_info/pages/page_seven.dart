import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/title_widget.dart';
import 'package:sample_glossiq/modules/personal_info/pages/page_three.dart';

class PageSeven extends StatelessWidget {
   PageSeven({super.key});
   PageThree data=PageThree();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         kHeight10,
         kHeight10,
       PageNo(number: '7/8'),
          kHeight10,
          TitleWidget(text: 'Select eye color that is the closest match to yours.'),
                    kHeight15,
                    
    
                  
                    kHeight15,
          Expanded(
                      child: SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount:data.color.length,
                          itemBuilder: (context, index) {
                          return CustomTileRow(image: data.data.image[index], title: data.color[index]);
                                         },),
                      ),
                    )
      ],
    );
  }
}