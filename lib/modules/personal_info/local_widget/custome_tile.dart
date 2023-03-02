import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_glossiq/const/app_const.dart';

class CustomTileRow extends StatelessWidget {
  CustomTileRow({super.key, required this.image, required this.title});
  String image;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: grey10),
      child: Row(
        children: [
          kWidth10,
          SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          kWidth10,
          Text(
            title,
            style: TextStyle(
              color: grey100,
              fontSize: 16,
              fontFamily: 'IBM Plex Sans, Medium',
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CusomTileColumnn extends StatelessWidget {
  CusomTileColumnn({super.key, required this.subTitle, required this.title});
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: grey10),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            kHeight10,
            Text(
              title,
              style: TextStyle(
                  color: grey100,
                  fontSize: 16,
                  fontFamily: 'IBM Plex Sans, Medium',
                  fontWeight: FontWeight.bold),
            ),
            kHeight10,
            Text(
              subTitle,
              style: TextStyle(
                color: grey100,
                fontSize: 16,
                fontFamily: 'IBM Plex Sans, Medium',
              ),
            )
          ],
        ),
      ),
    );
  }
}
class CustomTile extends StatelessWidget {
   CustomTile({super.key,required this.text});
   String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: 366,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: grey10),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight,
            Text(
              text,
              style: TextStyle(
                  color: grey100,
                  fontSize: 16,
                  fontFamily: 'IBM Plex Sans, Medium',
                  fontWeight: FontWeight.bold),
            ),
            kHeight10,
           
          ],
        ),
      ),
    );
  }
}
