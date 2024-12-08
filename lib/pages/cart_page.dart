import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakx/components/cart_item.dart';
import 'package:sneakx/models/cart.dart';

import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading My Cart
            Text(
              "My Cart",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(
                child:
                ListView.builder(
                  itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      Shoe indiviualShoe = value.getUserCart()[index];
                      return CartItem(shoe: indiviualShoe);
                    },
                )
            )
          ],
        ),
      ),
    );
  }
}
