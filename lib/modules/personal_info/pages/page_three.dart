import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/allCatogories/all_categories.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/title_widget.dart';

class PageThree extends StatelessWidget {
   PageThree({super.key});
  AllCategories data =AllCategories();
  List<String> color=['Black','Red','Blonde','Brown','Brown-Light'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       kHeight10,
       kHeight10,
       PageNo(number: '3/8'),
          kHeight10,
          TitleWidget(text: 'Do you color your hair?'),
                    kHeight15,
                    CustomTile(text: 'Yes',),
                    CustomTile(text: 'No',),
    
      kHeight10,
                    SizedBox(
                      width: 336,
                      child: Text('''Select hair color that is the closest match to your
                            natural hair color.''',
                      style: TextStyle(color: textGrey,fontFamily: 'IBM Plex Sans, Regular',fontSize: 14),),
                    ),
                    kHeight15,
                     Expanded(
                      child: SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount:color.length,
                          itemBuilder: (context, index) {
                          return CustomTileRow(image: data.image[index], title: color[index]);
                                         },),
                      ),
                    )
    ],);
  }
}