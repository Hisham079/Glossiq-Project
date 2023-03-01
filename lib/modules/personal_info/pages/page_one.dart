import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/allCatogories/all_categories.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';

class PageOne extends StatelessWidget {
   PageOne({super.key});
   AllCategories data =AllCategories();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          kHeight10,
          Text('1/8',
          style: TextStyle(color: Color(0xFF161616),
          fontSize: 14,fontFamily:'IBM Plex Sans, Bold',fontWeight: FontWeight.bold ),),
          kHeight10,
                    Text('Select hair type that is the closest match to yours.',
                    style: TextStyle(color: textGrey,fontFamily: 'IBM Plex Sans, Regular',fontSize: 14),),
                    kHeight15,
                    
                    Expanded(
                      child: SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount: data.image.length,
                          itemBuilder: (context, index) {
                          return CustomTileRow(image: data.image[index], title: data.text[index]);
                                         },),
                      ),
                    )



        ],
      ),
    );
  }
}