import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HAP",
              style: TextStyle(
                fontSize: 22.0
              ),
            ),
              Text(
                "N",
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.blue
                ),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }
}