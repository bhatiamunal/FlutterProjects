import 'package:flutter/material.dart';

class CardWithListView extends StatefulWidget {
  @override
  _CardWithListView createState() => _CardWithListView();
}

class _CardWithListView extends State {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     margin: const EdgeInsets.all(8.0),
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     decoration: BoxDecoration(
       border: Border.all(width: 2.0, color: Colors.black),
       borderRadius: BorderRadius.circular(20),
     ),
     child:   Column(children: [
       Expanded(
           flex: 1,
           child: Container(

               margin: const EdgeInsets.all(10),
               decoration: const BoxDecoration(
                 color: Colors.black,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                   bottomLeft: Radius.circular(0),
                   bottomRight: Radius.circular(0),
                 ),
               ),
               child:const Center(
                 child: Text("Order Summary ",
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                       color: Colors.white,
                       decoration: TextDecoration.none
                   ),
                   textAlign: TextAlign.center,

                 ),
               )
           )
       ),
       Expanded(
           flex: 8,
           child:SingleChildScrollView(

               child: Container(


                 child:ListView.builder(
                     itemCount: 300,
                     scrollDirection: Axis.vertical,
                     shrinkWrap: true,
                     itemBuilder: (BuildContext context, int index) {
                       return Card(
                         shadowColor:  Colors.black,shape: RoundedRectangleBorder(
                         borderRadius:BorderRadius.circular(12.0),
                         side: const BorderSide(
                           // border color
                           color:Colors.black,
                           // border thickness
                           width: 1,
                         ),
                       ),
                         child:  ListTile(
                           leading: Text("Text1"),
                           title: Text("Text2"),
                           subtitle: Text("Text3"),
                           trailing: Text("Text4"),
                         ),
                       );
                     }),
               )
           )
       ),
       Expanded(
           flex: 1,
           child: Container(

               margin: const EdgeInsets.all(10),
               decoration: const BoxDecoration(
                 color: Colors.black,
                 // borderRadius: BorderRadius.only(
                 //   topLeft: Radius.circular(0),
                 //   topRight: Radius.circular(0),
                 //   bottomLeft: Radius.circular(20),
                 //   bottomRight: Radius.circular(20),
                 // ),
               ),
               child:const Center(
                 child: Text("Total ",
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                       color: Colors.white,
                       decoration: TextDecoration.none
                   ),
                   textAlign: TextAlign.center,

                 ),
               )
           )
       )


     ]),

   );
  }


}