import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Row(children: [
          Image.asset("assets/images/logo.jpg", height: 50),
          SizedBox(width: 8.0),
          Text(
            "Welcome",
            style: TextStyle(color: Colors.blue, fontFamily: "FontMain"),
          ),
        ]),
      )),
    );
  }
}
