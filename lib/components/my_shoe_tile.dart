import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 240,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Image.asset(
          shoe.imagePath,
          height: 250,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(shoe.description)
             ],
           ),


           Padding(
             padding: const EdgeInsets.only(left: 22.0,),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(shoe.name,
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                     ),),

                     Text(shoe.price+" \$",
                     style: TextStyle(fontSize:18,color: Colors.grey[900]),),
                   ],
                 ),
                 // button to add to cart
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(15)
                     ),
                   ),
                   child: Icon(Icons.add,
                   color: Colors.white
                   ),
                 ),
               ],
             ),
           ),
         ],
        ),


    );
  }
}
