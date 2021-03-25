import 'package:flutter/material.dart';
import 'views/homepage.dart';

void main() {
  runApp(MyApp());
}
 
 class MyApp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'HAPN',
      theme: ThemeData.dark(),
      home:HomePage() ,
    );
  }
}
  
