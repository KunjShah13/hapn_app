import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hapn_app/views/auth/authenticate.dart';
import 'package:hapn_app/views/homepage.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    User _user = Provider.of<User>(context);
    return _user == null ? Authenticate() : HomePage();
  }
}
