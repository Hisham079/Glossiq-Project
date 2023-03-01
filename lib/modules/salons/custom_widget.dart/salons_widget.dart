import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/modules/salons/custom_widget.dart/icon_text.dart';

class SalonsWidget extends StatelessWidget {
  const SalonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Stack(children: [
                            Container(
                              height: 336,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/barbershop.jpg',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                                color: const Color(0xFFFFFFFF),
                                child: Column(
                                  children: [
                                    const ListTile(
                                      minLeadingWidth: 1,
                                      leading: CircleAvatar(
                                        radius: 25,
                                      ),
                                      title: Text('Frizeki salon Emmanuela',style: TextStyle(fontSize: 16,fontFamily: 'IBM Plex Sans, Bold',fontWeight: FontWeight.bold),),
                                      subtitle: Text('Cesta prekomorskih brigad 62a,',style: TextStyle(fontSize: 14,fontFamily: 'IBM Plex Sans, Regular',)),
                                    ),
                                    const Divider(
                                      height: 2,
                                      thickness: 1,
                                      indent: 15,
                                      endIndent: 15,
                                    ),
                                    Container(
                                      height: 40,
                                      child: Row(
                                        children: [
                                           const SizedBox(
                                            width: 15,
                                          ),
                                        IconTextWidget(icon: Icons.access_time_filled,
                                        color: Color(0xFFC6C6C6),
                                        text: '9:00-17:00',
                                        decoration: TextDecoration.underline,),
                                        IconTextWidget(
                                          color: Color(0xFFC6C6C6),
                                          icon:Icons.location_on,text: '1.2 km',
                                          decoration: TextDecoration.none, ),
                                        IconTextWidget(color: Color(0xFFBDFF3B),
                                          icon:Icons.star,text: '4.3(61)', ),
                                        
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ]),
                        ),
                      );
  }
}