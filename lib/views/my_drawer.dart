import 'package:flutter/material.dart';
import 'package:hapn_app/views/homepage.dart';
import 'package:hapn_app/views/sdg.dart';
import 'package:hapn_app/views/about_app.dart';

// FirebaseAuth _auth = FirebaseAuth.instance;

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          DrawerHeader(
            child: Text(
              "HAPN",
              style: TextStyle(fontSize: 22),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.home,
                  size: 22,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.nature,
                  size: 22,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "What are SDGs?",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sdg()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 22,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AboutApp()));
            },
          ),
        ],
      ),
    );
  }
}
