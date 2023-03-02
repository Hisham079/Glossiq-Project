import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/custome_tile.dart';
import 'package:sample_glossiq/modules/personal_info/local_widget/title_widget.dart';

class PageFive extends StatelessWidget {
  PageFive({super.key});
  List<String> hairProblem = [
    'No Hair Problem',
    'Deep Condition',
    'Split Ends',
    'No volume'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight10,
        kHeight10,
        PageNo(number: '5/8'),
        kHeight10,
        TitleWidget(text: '''Do you have any specific hair problem you want to
                                   solve?'''),
        kHeight15,
        kHeight15,
        Expanded(
          child: SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: hairProblem.length,
              itemBuilder: (context, index) {
                return CustomTile(text: hairProblem[index]);
              },
            ),
          ),
        )
      ],
    );
  }
}
