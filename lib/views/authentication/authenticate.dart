import 'package:hapn_app/Views/authentication/register.dart';
import 'package:hapn_app/Views/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(
        toggleView: toggleView,
      );
    } else {
      return Register(
        toggleView: toggleView,
      );
    }
  }
}
