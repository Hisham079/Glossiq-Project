import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/title_widget.dart';

class PageFour extends StatelessWidget {
   PageFour({super.key});
   List<String> scalp=['Itachy','Buildup','Oily','Hair Oil'];

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
       kHeight10,
       kHeight10,
       PageNo(number: '4/8'),
          kHeight10,
          TitleWidget(text: '''Select scalp condition that is the closest match to 
                                        yours.'''),
                    kHeight15,
                    
    
                  
                   // kHeight15,
                     Expanded(
                      child: SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount:scalp.length,
                          itemBuilder: (context, index) {
                          return CustomTile(text:scalp[index] );
                                         },),
                      ),
                    )
    ],);
  }
}