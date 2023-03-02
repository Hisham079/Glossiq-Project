import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/allCatogories/all_categories.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/title_widget.dart';

class PageTwo extends StatelessWidget {
   PageTwo({super.key});
  // AllCategories data =AllCategories();
   List <String> type=['No hair','Short','Medium','Long'];
   List <String> value=['Clean shaven or bald','1 cm - 5 cm','5 cm - 20 cm', '20cm or more'];

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        kHeight10,
        kHeight10,
        PageNo(number: '2/8'),
        kHeight10,
        TitleWidget(text: 'Select hair type that is the closest match to yours.'),
                  kHeight15,
                  
                  Expanded(
                    child: SizedBox(
                      height: 500,
                      child: ListView.builder(
                        itemCount: value.length,
                        itemBuilder: (context, index) {
                        return CusomTileColumnn(
                          title: type[index],
                          subTitle: value[index],
                        );
                                       },),
                    ),
                  )



      ],
    );
  }
}