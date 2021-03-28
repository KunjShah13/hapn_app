import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hapn_app/views/auth/firebaseAuth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HAPN',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('You have an error! ${snapshot.error.toString()}');
            return Center(child: Text('Something went wrong'));
          } else if (snapshot.hasData) {
            return FirebaseAuthDemo();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      theme: ThemeData.dark(),
    );
  }
}
