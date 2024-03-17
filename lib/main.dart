// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to set a theme of overall app and use the theme color anywhere in app
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: ToDoPage(),

      // routes: {
      //   '/secondpage': (context) => SecondScreen()
      // }, //for handling multiple roots
    );
  }
}
