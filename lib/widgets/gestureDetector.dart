import 'package:flutter/material.dart';

class Gesturedetector extends StatelessWidget {
  void userTapped() {
    print("User Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Gesture Detector"),
          ),
          body: Center(
            child: GestureDetector(
              onTap: userTapped,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple[200],
                child: Center(child: Text("Tap Me!")),
              ),
            ),
          )),
    );
  }
}
