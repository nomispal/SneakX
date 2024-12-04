import 'package:flutter/material.dart';

import '../components/my_shoe_tile.dart';

class ShopePage extends StatelessWidget {
  const ShopePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
      Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Search",style: TextStyle(color: Colors.grey),),
            Icon(Icons.search,color: Colors.grey,)
          ],
        ),
      ),
        Padding(
          padding: const EdgeInsets.only(left: 45.0,top: 23.0),
          child: Row(
            children: [
              Text("Everyone files.. some flies longer than others",
              style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hot Picks 🔥",
              style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 27),
              ),
              Text("See All",
              style: TextStyle(
                  color: Colors.blue,fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return ShoeTile();
                },)
        ),
      ],
    );
  }
}
