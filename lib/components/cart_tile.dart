import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/models/cart.dart';
import 'package:sneakershop/models/shoe.dart';

class CartTile extends StatefulWidget {
  Shoe individualshoe;
  CartTile({super.key, required this.individualshoe});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false)
        .removefromCart(widget.individualshoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25,
        top: 20,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          leading: Image.asset(widget.individualshoe.imagepath),
          title: Text(
            widget.individualshoe.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(widget.individualshoe.price),
          trailing: IconButton(onPressed: removeItem, icon: Icon(Icons.delete)),
        ),
      ),
    );
    ;
  }
}
