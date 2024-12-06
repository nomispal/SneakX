import 'package:flutter/material.dart';
import 'package:sneakx/models/shoe.dart';
import 'package:provider/provider.dart';
import '../components/my_shoe_tile.dart';
import '../models/cart.dart';

class ShopePage extends StatefulWidget {
  const ShopePage({super.key});

  @override
  State<ShopePage> createState() => _ShopePageState();
}


class _ShopePageState extends State<ShopePage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    // Show user shoe added to cart
    showDialog(
        context: context,
        builder:(context) => AlertDialog(
          title: Text("Shoe Added Sucessfully"),
          content: Text("Check Your Cart"),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:(context, value, child) =>
          Column(
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


              Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      return ShoeTile(
                        shoe: shoe,
                        onTap:() => addShoeToCart(shoe),
                      );
                    },)
              ),

            ],
          ),

    );
  }
}
