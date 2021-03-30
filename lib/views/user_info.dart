import 'package:flutter/material.dart';
import 'package:hapn_app/Controllers/auth.dart';

class UserInfoWidget extends StatelessWidget {
  final AuthController auth;

  UserInfoWidget({this.auth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Hero(
              tag: 'avatar',
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage("https://i.pravatar.cc/150?img=3"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "John Doe",
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem Ipsum",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  // TODO
                  await this.auth.signOut();
                  Navigator.of(context).pop();
                },
                child: Text("Sign Out"))
          ],
        ),
      ),
    );
  }
}
