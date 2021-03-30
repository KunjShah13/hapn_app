import 'package:flutter/material.dart';
import 'package:hapn_app/views/auth/register.dart';
import 'package:hapn_app/views/auth/signIn.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return this.showSignIn
        ? SignIn(
            toggleView: toggleView,
          )
        : Register(
            toggleView: toggleView,
          );
  }
}
