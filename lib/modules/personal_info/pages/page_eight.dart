import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/allCatogories/all_categories.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/title_widget.dart';

class PageEight extends StatelessWidget {
  PageEight({super.key});
  List<String> nailShape = ['Square', 'Flare', 'Round', 'Oval', 'Ballerina'];
  AllCategories data = AllCategories();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight10,
        kHeight10,
        PageNo(number: '8/8'),
        kHeight10,
        TitleWidget(
            text: 'Select nails shape that is the closest match to yours.'),
        kHeight15,

        Expanded(
          child: SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: nailShape.length,
              itemBuilder: (context, index) {
                return CustomTileRow(
                    image: data.image[index], title: nailShape[index]);
              },
            ),
          ),
        )
      ],
    );
    ;
  }
}
