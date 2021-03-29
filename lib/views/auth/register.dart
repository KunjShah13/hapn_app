import 'package:hapn_app/views/homePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String countryValue;
  String stateValue;
  String cityValue;

  bool _isSuccess;
  String _userEmail;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
              key: _formKey,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: const Text(
                          'Register New User',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        controller: _displayName,
                        decoration: const InputDecoration(labelText: 'Full Name'),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(labelText: 'Password'),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      SizedBox(height: 20,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 180,
                          child:
                          Column(
                            children: [
                              SelectState(
                                // style: TextStyle(color: Colors.red),
                                onCountryChanged: (value) {
                                  setState(() {
                                    countryValue = value;
                                  });
                                },
                                onStateChanged:(value) {
                                  setState(() {
                                    stateValue = value;
                                  });
                                },
                                onCityChanged:(value) {
                                  setState(() {
                                    cityValue = value;
                                  });
                                },

                              ),
                            ],
                          )
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: OutlinedButton(
                          child: Text("register"),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              _registerAccount();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  void _registerAccount() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;

    if (user != null) {
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      await user.updateProfile(displayName: _displayName.text);
      final user1 = _auth.currentUser;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(
            user: user1,
          )));
    } else {
      _isSuccess = false;
    }
  }
}