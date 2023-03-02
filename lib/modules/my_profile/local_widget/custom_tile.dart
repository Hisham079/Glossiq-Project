import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';

class CustomTileImage extends StatelessWidget {
  CustomTileImage({
    super.key,
    required this.image,
    required this.text,
  });
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
          title: Text(
            text,
            style: TextStyle(
                color: grey100,
                fontFamily: 'IBM Plex Sans, Medium',
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
        const Divider(
          thickness: 1,
          color: Color.fromARGB(255, 232, 232, 232),
        ),
      ],
    );
  }
}

class ProfilePageTitle extends StatelessWidget {
  ProfilePageTitle({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(text),
    );
  }
}

class CustomTileIcon extends StatelessWidget {
  CustomTileIcon(
      {super.key, required this.iconData, required this.text, this.subTitle});
  String text;
  IconData iconData;
  Widget? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: 5,
          leading: Icon(
            iconData,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            text,
            style: TextStyle(
                color: Color(0xFF6F6F6F),
                fontFamily: 'IBM Plex Sans, Medium',
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
          subtitle: subTitle,
        ),
        const Divider(
          thickness: 1,
          color: Color.fromARGB(255, 232, 232, 232),
        ),
      ],
    );
  }
}

class CustomTile extends StatelessWidget {
  CustomTile({super.key, required this.text, this.trailing});
  String text;
  Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'IBM Plex Sans, Bold'),
          ),
          trailing: trailing,
        ),
        const Divider(
          thickness: 1,
          color: Color.fromARGB(255, 232, 232, 232),
        ),
      ],
    );
  }
}
