import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});
  void move(value) {}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: Divider.createBorderSide(context,
                          color: Colors.grey[900]),
                    ),
                  ),
                  child: Image.asset(
                    'lib/images/logo.png',
                    color: Colors.white,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: Colors.grey[900],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, bottom: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "S H O P",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, bottom: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "A B O U T",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, bottom: 20),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "L O G O U T",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
