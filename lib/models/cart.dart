import 'package:flutter/cupertino.dart';
import 'package:sneakx/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sales
  List<Shoe> shoeAvaialable = [
    Shoe(
        price: "45",
        description: "Air Force 1",
        imagePath: "lib/images/AirForce1LE.png",
        name: "Air Force 1 "),
    Shoe(
        price: "235 ",
        description: "Air Force 1 LV8 ",
        imagePath: "lib/images/AIRFORCE1LV8.jpg",
        name: "Air Force 1LV8"),
    Shoe(
        price: "260 ",
        description: "Nike Dunk Lownn ",
        imagePath: "lib/images/NIKEDUNKLOWNN.png",
        name: "Nike Dunk Lownn"),
    Shoe(
        price: "320 ",
        description: "Nike Dunk Retro ",
        imagePath: "lib/images/NIKEDUNKLOWRETRO.png",
        name: "Nike Dunk Retro "),
    Shoe(
        price: "459 ",
        description: "Nike Dunk Lown Red ",
        imagePath: "lib/images/NIKEDUNKLOWRETROLTD.png",
        name: "Nike Dunk Red"),
  ];

  //list of items in user cart

  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeAvaialable;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove items to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
