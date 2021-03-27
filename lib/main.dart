import 'package:hapn_app/Controllers/auth.dart';
import 'package:hapn_app/Views/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: Colors.deepOrange,
            ),
            home: Scaffold(
              body: Center(
                child: Text("Error"),
              ),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            home: StreamProvider<User>(
              initialData: null,
              create: (_) => AuthController().user,
              child: Wrapper(),
            ),
          );
        }
        return MaterialApp(
          home: Scaffold(
            body: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
