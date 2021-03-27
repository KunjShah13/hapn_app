import 'package:hapn_app/Controllers/auth.dart';
import 'package:hapn_app/Views/loading.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthController _auth = AuthController();
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
        title: Text("Register to Fire Todo"),
        actions: [
          TextButton.icon(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            label: Text(
              "Sign In",
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
                        child: Text("Register"),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() {
                              loading = true;
                            });
                            dynamic result =
                                await _auth.register(email, password);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                errMsg =
                                    "Couldn't register with those credentials";
                              });
                              print(errMsg);
                            }
                          }
                        },
                      ),
                      SizedBox(height: 20),
                      Text(
                        errMsg,
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ))),
    );
  }
}
