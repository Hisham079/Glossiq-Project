import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/title_widget.dart';

class PageSix extends StatelessWidget {
   PageSix({super.key});
   List<String> skintype=['No Skin Problem','Acne/Blemish','Blackheads','Dark Circle'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          kHeight10,
        kHeight10,
       PageNo(number: '6/8'),
          kHeight10,
          TitleWidget(text: 'Do you have any specific skin problem?'),
                    kHeight15,
                    
    
                  
                    kHeight15,
                     Expanded(
                      child: SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount:skintype.length,
                          itemBuilder: (context, index) {
                          return CustomTile(text:skintype[index] );
                                         },),
                      ),
                    )
    ],);
  }
}