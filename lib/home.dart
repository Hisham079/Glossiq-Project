import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
   List<String> image=['assets/images/flower2.jpeg','assets/images/flower.jpg','assets/images/flower3.jpg','assets/images/flower2.jpeg'];
   List<String> text=['Beuty saloon','Hair Saloon','Barber Shop','Nail Saloon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
        Text('All Categories',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
        SizedBox(height: 20,),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 900,
            child: GridView.builder(gridDelegate:   SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20), 
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        
                        child: Stack(
                          children:[ Container(
                            height: 300,
                            width: 190,
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(blurRadius: 2,color: Colors.grey)],
                              image: DecorationImage(image: AssetImage(image[index
                              ],),fit: BoxFit.cover)),
                                  
                            //child: Text('data'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 158),
                            child: Container(
                              
                              height: 80,
                              width: MediaQuery.of(context).size.height,
                              color: Colors.white,
                              child: Center(child: Text(text[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),))),
                          )]
                        ),
                      );
                    },),
          ),
        )
      ],),
    );
  }
}