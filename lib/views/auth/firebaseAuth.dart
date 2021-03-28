import 'package:hapn_app/views/auth/register.dart';
import 'package:hapn_app/views/auth/signIn.dart';
import 'package:flutter/material.dart';

class FirebaseAuthDemo extends StatefulWidget {
  @override
  _FirebaseAuthDemoState createState() => _FirebaseAuthDemoState();
}

class _FirebaseAuthDemoState extends State<FirebaseAuthDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(TextSpan(
            text: "HAP",
            style: TextStyle(fontSize: 22),
            children: [
              TextSpan(
                  text: "N", style: TextStyle(fontSize: 22, color: Colors.blue))
            ])),
        backgroundColor: Colors.transparent,
        elevation: 3.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: OutlinedButton(
              child: Text(
                "Sign in",
              ),
              onPressed: () => _pushPage(context, SignIn()),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
          Container(
            child: OutlinedButton(
              child: Text("Register"),
              onPressed: () => _pushPage(context, Register()),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
