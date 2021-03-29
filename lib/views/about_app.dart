import 'package:flutter/material.dart';
import 'package:hapn_app/views/my_drawer.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About")
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 50,),
            Center(
              child: Text.rich(
                  TextSpan(
                      text: "HAP",
                      style: TextStyle(fontSize: 32),
                      children: [
                        TextSpan(
                            text: "N",
                            style: TextStyle(fontSize: 32, color: Colors.blue))
                      ]),
                ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Text(
                  "HAPN app functions as a juncture to the citizens, it helps people connect and collaborate on low level problems by sharing those and their solutions through our platform. This app will be available in regional languages soon.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    height: 1.4
                  ),
                ),
              ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Center(
                    child: Text(
                        "Please provide us with your valuable feedback. ",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(hintText: "Feedback"),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      onPressed: () {
                        // TODO Handle Feedback
                      },
                      child: Text("Submit Feedback")
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
