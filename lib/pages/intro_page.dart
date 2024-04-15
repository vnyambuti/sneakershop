import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("lib/images/logo.png"),
          Text(
            "Just Do It",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            "Brand new and Affordable  sneakers made with quality materials",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                )),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)),
              padding:
                  EdgeInsets.only(left: 150, right: 150, top: 20, bottom: 20),
              child: Text(
                "Shop Now",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
