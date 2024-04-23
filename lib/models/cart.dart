import 'package:flutter/cupertino.dart';
import 'package:sneakershop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes
  List<Shoe> shoes = [
    Shoe(
        name: "air-max-1",
        description: "Air Max One",
        imagepath: 'lib/images/air-max-1.png',
        price: '290'),
    Shoe(
        name: "air-max-sc",
        description: "Air Max SC",
        imagepath: 'lib/images/air-max-sc.jpeg',
        price: '490'),
    Shoe(
        name: "custom-nike",
        description: "Custom nike",
        imagepath: 'lib/images/custom-nike.png',
        price: '350'),
    Shoe(
        name: "luka-2",
        description: "Air Max One",
        imagepath: 'lib/images/luka-2.png',
        price: '900'),
  ];
  //get list of shoes

//create cart

  List<Shoe> cart = [];

  List<Shoe> getUserCart() {
    return cart;
  }

  //add to cart
  void addtoCart(shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  //remove from cart

  void removefromCart(shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
