import 'package:flutter/material.dart';
import 'package:hapn_app/views/my_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            text: "HAP",
            style: TextStyle(
              fontSize: 22
            ),
            children: [
              TextSpan(
                text: "N",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue
                )
              )
            ]
          )
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: MyDrawer(),
    );
  }
}