import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/salons/custom_widget.dart/back_button.dart';

class AllCategories extends StatelessWidget {
   AllCategories({super.key});
   List<String> image=['assets/images/flower2.jpeg',
   'assets/images/flower.jpg',
   'assets/images/flower3.jpg',
   'assets/images/flower2.jpeg',
   'assets/images/flower.jpg',
   'assets/images/flower.jpg',
   'assets/images/flower3.jpg',
   'assets/images/flower2.jpeg',];
   List<String> text=['Beauty saloon','Hair Saloon','Barber Shop','Nail Saloon','Hair Saloon',
   'Massage','Stylist','Day spa','Makeup Artist'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5,top: 5),
          child: CustomBackbutton(buttonAction: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
          const Text('All Categories',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w800),),
          const SizedBox(height: 20,),
          Expanded(
            child: SizedBox(
              
              height: 900,
              child: GridView.builder(gridDelegate:   const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10), 
                      itemCount: image.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(boxShadow:
                           const [BoxShadow(blurRadius: 1,color: Colors.grey)],
                          borderRadius: BorderRadius.circular(5)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            
                            child: Stack(
                              children:[ 
                                Container(
                                height: 300,
                                width: 190,
                                decoration: BoxDecoration(
                                 
                                  boxShadow: const [ BoxShadow(blurRadius: 10,color: Colors.black)],
                                  image: DecorationImage(image: AssetImage(image[index
                                  ],),fit: BoxFit.cover)),
                                      
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      
                                      height: 70,
                                      width: MediaQuery.of(context).size.height,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Center(child: Text(text[index],
                                        style: const TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w800),)),
                                      )),
                                  ],
                                ),
                              ),
                              ]
                            ),
                          ),
                        );
                      },),
            ),
          )
        ],),
      ),
    );
  }
}