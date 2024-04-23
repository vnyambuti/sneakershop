import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/components/shoe_tile.dart';
import 'package:sneakershop/models/cart.dart';
import 'package:sneakershop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  addToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addtoCart(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Success"),
              content: Text("Added to cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("search"), Icon(Icons.search)],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text(
              "Everybody flies ... but some fly higher",
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot deals",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              Shoe shoe = value.shoes[index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addToCart(shoe),
              );
            },
          )),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    ));
  }
}
