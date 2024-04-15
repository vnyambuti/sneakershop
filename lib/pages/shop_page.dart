import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
        )
      ],
    ));
  }
}
