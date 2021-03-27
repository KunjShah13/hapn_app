import 'package:hapn_app/Controllers/auth.dart';
import 'package:hapn_app/Views/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = AuthController();
  String email = '';
  String password = '';
  String errMsg = '';
  bool loading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.deepOrange,
        title: Text("Sign in Fire Todo"),
        actions: [
          TextButton.icon(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            label: Text(
              "Register",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              widget.toggleView();
            },
          )
        ],
      ),
      body: loading
          ? Loading()
          : Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (val) =>
                            val.isEmpty ? "Enter valid Email" : null,
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (val) =>
                            val.length < 6 ? "Enter valid password" : null,
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Password"),
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.deepOrange),
                        ),
                        child: Text("Sign In"),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() {
                              loading = true;
                            });
                            dynamic result =
                                await _auth.signIn(email, password);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                errMsg =
                                    "Couldn't sign in with those credentials";
                              });
                              print(errMsg);
                            }
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        errMsg,
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ))),
    );
  }
}
