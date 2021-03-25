import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hapn",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              "Up",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }
}
