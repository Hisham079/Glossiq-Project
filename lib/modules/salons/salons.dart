import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample_glossiq/modules/allCatogories/all_categories.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/back_button.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/icon_text.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/salcon_tile.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/salons_widget.dart';

class SalonsPage extends StatelessWidget {
  SalonsPage({super.key});
  AllCategories category = AllCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
            height: 40,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                color: Colors.grey.shade300),
            child: CupertinoTextField(
              placeholder: 'Search',
              prefix: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: FaIcon(
                  FontAwesomeIcons.search,
                  color: Color(0xFF161616),
                  size: 20,
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(30),
              ),
            )),
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 9, bottom: 9, right: 8),
            width: 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(70)),
                border: Border.all(color: Colors.grey)),
            child: const Icon(
              Icons.mail,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1260,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFFFFFFFF),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xFFFFFFFF),
                child: ListTile(
                  leading: const Text(
                    'Salons',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'D-Bol-24',
                      color: Color(0xFf161616),
                    ),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllCategories(),
                          ));
                    },
                    child: const Text(
                      'View All',
                      style: TextStyle(
                          color: Color(0xFF161616),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans, Bold',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                height: 120,
                color: Colors.white,
                margin: const EdgeInsets.only(left: 10, bottom: 15),
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.image.length,
                    // itemExtent: 120,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(2),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: AssetImage(
                                  category.image[index],
                                ),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 65),
                          child: SizedBox(
                            height: 40,
                            width: 96,
                            child: Center(
                              child: Text(
                                category.text[index],
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'IBM Plex Sans, Bold'),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFFF4F4F4),
                //  height: 2,
                thickness: 2,
              ),
              const SizedBox(
                height: 0.2,
              ),
              SalonTile(
                iconColor: const Color(0xFFC6C6C6),
                color: const Color(0xFF161616),
                icon: Icons.location_on,
                text: 'Near me',
                children: [
                  Container(
                    height: 800,
                    color: const Color(0xFFE0E0E0),
                    child: Center(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2 salons',
                            style: TextStyle(
                                color: Color(0xFF6F6F6F),
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SalonsWidget(),
                          SalonsWidget()
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
              const Divider(
                color: Color(0xFFF4F4F4),
                height: 2,
                thickness: 2,
              ),
              SalonTile(
                children: [],
                iconColor: const Color(0xFFC6C6C6),
                color: const Color(0xFF161616),
                icon: Icons.calendar_today_rounded,
                text: 'Date',
              ),
              const Divider(
                color: Color(0xFFF4F4F4),
                height: 2,
                thickness: 2,
              ),
              SalonTile(
                iconColor: const Color(0xFFC6C6C6),
                color: const Color(0xFF161616),
                icon: Icons.access_time_filled_outlined,
                text: 'Time',
                children: [],
              ),
              // Container(
              //   height: 800,
              //   color: const Color(0xFFE0E0E0),
              //   child: Center(
              //     child: Column(
              //       children: const [
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Text(
              //           '2 salons',
              //           style: TextStyle(
              //               color: Color(0xFF6F6F6F),
              //               fontFamily: 'IBM Plex Sans',
              //               fontSize: 14),
              //         ),
              //         SizedBox(
              //           height: 5,
              //         ),
              //         SalonsWidget(),
              //         SalonsWidget()
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
