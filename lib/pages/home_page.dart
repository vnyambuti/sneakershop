import 'package:flutter/material.dart';

import '../components/side_nav.dart';
import '../components/bottom_nav.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  void navigate(index) {
    setState(() {
      selectedindex = index;
    });
  }

  List pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () => {Scaffold.of(context).openDrawer()},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          )),
      drawer: SideNav(),
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigate(index),
      ),
      body: pages[selectedindex],
    );
  }
}
