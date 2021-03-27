import 'package:hapn_app/Views/authentication/authenticate.dart';
import 'package:hapn_app/Views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    User _user = Provider.of<User>(context);
    return _user == null ? AuthenticationPage() : HomePage();
  }
}
