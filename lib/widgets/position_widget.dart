import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 700,
            color: Colors.grey,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Positioned(
                  bottom: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
